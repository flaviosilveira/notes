#!/bin/bash
#
# ciforms.sh - Monta Controller, Model e Views para Cadastro com Editar e Remover. Montagem para framework CodeIgniter.
#
# Site	: http://www.flaviosilveira.com
# Autor	: Flavio Silveira <flavioaugustosilveira@gmail.com>
#
# -------------------------------------------------------------------------------------------------------
#
# Historico:
#
#	Versao Teste: - Versao inicial para testes, 2009-02-08
#
# -------------------------------------------------------------------------------------------------------
#
# Licenca: CC.
#
# -------------------------------------------------------------------------------------------------------
#

########
# HELP #
########
help="
Uso: $(basename "$0") [opcoes] 'nome da tabela no banco' 'nome da PK da tabela'

Recebe como parametros o nome da tabela e em seguida o nome da PK dessa tabela.

A partir disso o programa monta o conteudo do Controller, Model e Views e os cria para voce.

Deve ser executado dentro da pasta Applicattion. As pastas do Controller, Model E View
nao podem ter sido renomeadas.


Opcoes:
-h, --help		Mostra a tela de ajuda e sai
-V, --version		Mostra a versao do programa e sai

"

#############################################
# Tratamento das opcoes da linha de comando #
#############################################

case "$1" in
	-h | --help)
		echo "$help"
		exit 0
	;;

	-V | --version)
		echo -n $(basename "$0")
		grep '^#	Versao ' "$0" | tail -1 | cut -d : -f 1 | tr -d \#
		exit 0
	;;
esac

#######################################
# Tratamento dos parametros recebidos #
#######################################

if [ $# -ne 2 ]
then
	echo "Numero incorreto de parametros. --help para Ajuda."
	exit 1
fi


##################################################
# Nome escolhido com primeira letra em maiusculo #
##################################################

name=$(echo $1 | sed 's/\ a/\ A/g;s/\ b/\ B/g;s/\ c/\ C/g;s/\ d/\ D/g;s/\ e/\ E/g;s/\ f/\ F/g;s/\ g/\ G/g;s/\ h/\ H/g;s/\ i/\ I/g;s/\ j/\ J/g;s/\ k/\ K/g;s/\ l/\ L/g;s/\ m/\ M/g;s/\ n/\ N/g;s/\ o/\ O/g;s/\ p/\ P/g;s/\ q/\ Q/g;s/\ r/\ R/g;s/\ s/\ S/g;s/\ t/\ T/g;s/\ u/\ U/g;s/\ v/\ V/g;s/\ w/\ W/g;s/\ x/\ X/g;s/\ y/\ Y/g;s/\ z/\ Z/g;s/^a/A/g;s/^b/B/g;s/^c/C/g;s/^d/D/g;s/^e/E/g;s/^f/F/g;s/^g/G/g;s/^h/H/g;s/^i/I/g;s/^j/J/g;s/^k/K/g;s/^l/L/g;s/^m/M/g;s/^n/N/g;s/^o/O/g;s/^p/P/g;s/^q/Q/g;s/^r/R/g;s/^s/S/g;s/^t/T/g;s/^u/U/g;s/^v/V/g;s/^w/W/g;s/^x/X/g;s/^y/Y/g;s/^z/Z/g;')

###################################  
# Montando conteudo do Controller #
###################################

controller="
	<?php

	class  $name extends Controller
	{	
		function $name()
		{
			parent::Controller();
			
			\$this->load->model('$1_model');
		}
		
		function index()
		{
			\$data['list'] = \$this->$1_model->getAll();
			
			\$this->load->view('$1_view', \$data);
		}
		
		function edit(\$id)
		{
			\$result = \$this->$1_model->getInfo(\$id);
			\$array_result = get_object_vars(\$result[0]);
			
			foreach(\$array_result as \$row => \$value)
			{
				if(\$row == '$2')
				{
					\$data['primary_key'] = \$value;
				}
				else
				{
					\$data['info'][\$row] = \$value;
				}
			}
			
			\$this->load->view('$1_edit_view', \$data);
		}
		
		function save_edit()
		{
			\$id = array_shift(\$_POST);
			
			\$this->$1_model->save_edit(\$id, \$_POST);
			
			redirect('$1');
		}
		
		function insert()
		{
			\$result = \$this->$1_model->getFields();

			foreach(\$result as \$row)
			{
				if(\$row != '$2')
				{
					\$data['field'][\$row] = \$row;
				}
			}
			
			\$this->load->view('$1_insert_view', \$data);
		}
		
		function save_new()
		{
			\$this->$1_model->insert_new(\$_POST); 
			
			redirect('$1');
		}
		
		function remove(\$id)
		{
			\$this->$1_model->remove(\$id);

			redirect('$1');
		}
		
		
	}

?>

"

###############################
# Montando conteudo do Model  #
###############################

name_model=$name\_model

model="
<?php

	class $name_model extends Model
	{
		function $name_model()
		{
			parent::Model();
			
			\$this->load->database();
		}
		
		function getAll()
		{
			\$query = \$this->db->get('$1'); 
		
			return \$query->result();
		}
		
		function getFields()
		{
			\$fields = \$this->db->list_fields('$1');
		
			return \$fields;
		}
		
		function getInfo(\$id)
		{
			\$query = \$this->db->get_where('$1', array('$2' => \$id));
			
			return \$query->result();
		}
		
		function save_edit(\$id, \$array)
		{
			\$this->db->where('$2', \$id);
			\$this->db->update('$1', \$_POST);
		}
		
		function remove(\$id)
		{
			\$this->db->where('$2', \$id);
			\$this->db->delete('$1');
		}

		function insert_new(\$values)
		{
			\$this->db->insert('$1', \$values); 
		}
	
	}

?>

"

#######################################
# Montando conteudo da View Principal #
#######################################

principal_view="
<h2>$name</h2>

<a href=\"<?php print(base_url() . '$1/insert/'); ?>\">Insert</a>

<?php
	
	\$table = '<table border=\"1\" width=\"500\">';
	\$table .= '<tr>';
	\$table .= '<th>$2</th>';
	\$table .= '<th>Actions</th>';
	\$table .= '</tr>';
			
	for(\$i = 0; \$i < count(\$list); \$i++)
	{
		\$table .= '<tr>';
		\$table .= '<td align=\"center\">' . \$list[\$i]->$2 . '</td>';
		\$table .= '<td align=\"center\">';
		\$table .= '<a href=\"' . base_url() . '$1/edit/' . \$list[\$i]->$2 . '\">Edit</a>';
		\$table .= '<a href=\"' . base_url() . '$1/remove/' . \$list[\$i]->$2 . '\">Remove</a>';
		\$table .= '</td>';
		\$table .= '</tr>';
	}
			
	\$table .= '</table>';
	
	print(\$table);
			
?>

"

######################################
# Montando conteudo da View de Edicao #
#######################################

edit_view="
<h2>Edit $name</h2>

<form action='<?php print(base_url() . '$1/save_edit/'); ?>' method='post'>

	<input name='id' type='hidden' value='<?php print(\$primary_key); ?>' />
	
	<?php
		
		\$inputs = '';
		
		foreach(\$info as \$row => \$value)
		{
			\$inputs .= '<p>';
			\$inputs .= '<label for=\"' . \$row . '\">';
			\$inputs .= \$row . '		';
			\$inputs .= '</label>';
			\$inputs .= '<input type=\"text\" name=\"' . \$row . '\" id=\"' . \$row . '\" value=\"' . \$value . '\">';
			\$inputs .= '</p>';
		}
		
		print(\$inputs);

	?>
	
	<input type='submit' value='Save' />

</form>

"

#########################################
# Montando conteudo da View de Insercao #
#########################################

insert_view="
<h2>Insert $name</h2>

<form action='<?php print(base_url() . '$1/save_new/'); ?>' method='post'>
	
	<?php
		
		\$inputs = '';
		
		foreach(\$field as \$row)
		{
			\$inputs .= '<p>';
			\$inputs .= '<label for=\"' . \$row . '\">';
			\$inputs .= \$row . '		';
			\$inputs .= '</label>';
			\$inputs .= '<input type=\"text\" name=\"' . \$row . '\" id=\"' . \$row . '\">';
			\$inputs .= '</p>';
		}
		
		print(\$inputs);

	?>
	
	<input type='submit' value='Save' />

</form>

"


echo $controller > controllers/$1.php
echo $model > models/$1_model.php
echo $principal_view > views/$1_view.php
echo $edit_view > views/$1_edit_view.php
echo $insert_view > views/$1_insert_view.php


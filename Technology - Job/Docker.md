# Docker

### BÁSICO
- Virtualização VS LXC | Virtualização com host versus containers

### ANTIGO DOCKER MACHINE
- Instalação no MAC e no windows é com docker toolbox, que tem como pré requisito um Hypervisor, como o VirtualBox. Essa máquina virtual fará o papel de Docker Host, uma vez que o Docker roda apenas no Linux.

Se estiver em MAC ou windows, será solicitado que se crie o Docker Host
pelo docker-machine: docker-machine create --driver virtualbox nome-qualquer
Se já tiver criado a máquina outras vezes, com docker-machine ls, você pode ver as máquinas que vocês tem
docker-machine start nome-qualquer, inicia a máquina.

- Se abrir pelo Kitematic, ele criará uma máquina chamada Default. Kitematic é um GUI para o docker.
docker-machine ls lista as máquinas virtuais gerenciadas pelo docker machine

- Parar a máquina virtual docker-machine stop nome-qualquer

- No MAC e no windows é necessário configurar o docker host
docker-machine env nome-qualquer
Usar os comandos da saída para configurar o docker host

- Essa máquina virtual criada pelo docker-machine, roda uma distribuição Boot2docker, bem leve e pronta para rodar o docker.

### Docker For Mac Environment
Docker roda em cima de Linux. No Mac ele usava o vagrant para criar uma Docker Machine. Uma máquina virtual linux no seu MAC para trabalhar com Containers. Também citada como Docker ToolBox ou Boot2Docker.

Agora temos o Docker for MAC que ainda usa virtualização, mas com HyperKit, mais leve.

Não é mais necessário trabalhar com os comandos de Docker Machine.

### Hello World
- Primeiro contêiner docker run hello-world
Verifica se a imagem hello-world existe, se não faz download a partir do docker-hub. Executa o comando hello e sai.

```docker run -it ubuntu bash```
-i para interactive, torna o output do contêiner interativo
-t para atrelar terminal TTY
- Verifica se a imagem do ubuntu existe, se não faz o download. Como o bash abre um linux shell, ele entra no contêiner e esse continua rodando enquanto esse Shell estiver aberto.

- Ctrl+P / Ctrl+Q fazem detached do container
- docker ps   (-a  -q) lista os containers
- para voltar para o container: docker attach [nome] Isso vai voltar para o container no processo original
- para criar um novo processo no mesmo container use: docker exec -it [nome] bash
- Rode ps aux dentro do container para entender
- Rode docker exec -it [nome] echo "teste" para executar um comando e sair. Ele sai porque o comando echo acaba com o retorno, com o comando bash acima o container se mantêm.

docker images - Para listar as imagens
docker start / docker stop
docker rm   [containers] - para remover containers
docker rmi  [imagens] - para remover imagens
docker logs [nome]

### DockerHub
- repositório de imagens
```docker search [o que vc quer]```

### NGINX
- Para apenas baixar uma imagem, docker pull.
- docker pull nginx
- Para expor a porta do container para sua máquina local docker run -d -p 8080:80 nginx
Agora acesse no navegador localhost:8080 

Nginx cache age de maneira estranha
Criar arquivo de config com sendfile off e expires 0;
Para usar ele junto ao container basta repetir o comando -v
```docker run -d -v ~/dev/html:/usr/share/nginx/html -v ~/dev/html/nginx.conf:/etc/nginx/nginx.conf -p 8080:80 nginx```

### PHP
```docker run -it php php --version```
### PHP Cli
```docker run -it -v ~/dev/php:/usr/src/wd -w /usr/src/wd php php script.php```
### PHP Built in
```docker run -it -p 8080:8080 -v ~/dev/php:/usr/src/wd -w /usr/src/wd php php -S 0.0.0.0:8080```

### MYSQL
```docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql```
Mysql demora para subir. Acompanhe pelos logs o momento que ele está pronto para receber conexões.

### PHP Built In + MYSQL

```docker run -d --link [nome do container q vc quer conectar]:[algo para identificar seu container] -p 8080:8080 -v ~/dev/php:/usr/src/php -w /usr/src/php php php -S 0.0.0.0:8080```
- vai faltar o driver
- docker exec [nome] docker-php-ext-install pdo_mysql
- No host para conexão no arquivo php, use o Alias que você escolheu no link
- docker restart para reiniciar o serviço e voilá!

--link está depreciado e deve ser removida em breve, invés disso utilizar redes para comunicar os containers. docker network
- todo container tem um IP interno, ele pode ser visto com o comando docker inspect
- docker port [nome do container] mostra as portas expostas dos containers

### Redes

- docker network ls - Mostra as redes construídas por padrão na instalação do docker
- Quando você roda um container, você pode especificar a qual rede quer conectar ele. Por padrão ele vai para a docker0,
- Com um ifconfig, você vê a rede docker0 como parte do seu stack de redes
- Ao criar um container, dentro dele é criado uma rede idêntica a do host
- O comando docker network inspect bridge, vai mostrar todos os containers usando essa rede default
- Uma vez dentro da mesma rede, os containers podem se comunicar usando IP
- Faça um teste substituindo o host em seu arquivo pdo pelo IP do container MySQL

A documentação recomenda evitar os dois métodos cima, --link e o ip diretamente e criar suas próprias interfaces de rede.

```docker network create [nome da sua rede]```
Sem especificar, vai criar com driver Bridge

Rode um container apontando o uso dessa rede
```docker run -itd --network=isolated --name=php1 php bash```

docker network inspect isolated vai mostrar os containers usando a rede que chamei de isolated

Crie mais um container usando a rede criada
```docker run -itd --network=isolated --name=php2 php bash```

Crie outro, mas dessa vez vamos adicionar a rede apenas depois
```docker run -itd --network=isolated --name=php3 php bash```
```docker network connect isolated php3```

Acesse qualquer das máquinas e constate que elas se conhecem pelo nome.
Isso acontece graças ao módulo DNS do docker. Não acontece com a rede padrão do docker.

Agora é fazer novamente o teste usando o nome da máquina no seu arquivo pdo.php.

### PHP + NGinx + Mysql
- crie uma rede chamada phpnetwork
```docker run --name mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql --network=phpnetwork```
```docker run --name php-fpm -d --network=phpnetwork --expose 9000 -v ~/dev/php:/var/www/php -w /var/www/php php:7.0-fpm```
```docker run --name nginx --network=phpnetwork -it -v ~/dev/php:/var/www/php -v ~/dev/php/default.conf:/etc/nginx/conf.d/default.conf -p 80:80 nginx bash```

- iniciar nginx
- instalar pdo_mysql
- reiniciar pp-fpm

### Quer estudar Neo4j ?
- Procure no docker hub
- No próprio docker hub diz como fazer para iniciar o container


### Docker attach/exec with detach keys option
```docker exec -ti --detach-keys="ctrl-a" [container-name] [command]```

### Docker watch in docker compose 
sync, rebuild, sync+start

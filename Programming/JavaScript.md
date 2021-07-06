## JS

```
const tarefa = {
    nome: 'Nome da tarefa',
    descricao: 'Descrição da tarefa'
}
const listaDeTarefas = [tarefa];
```

```
listaDeTarefas.forEach( tarefa => {
    console.log(`
    Nome: ${tarefa.nome}
    Descrição: ${tarefa.descricao}
    Responsável: ${tarefa.responsavel.nome}
    `)
});
```

- Erro: Cannot read property...

```
const tarefa = {
    nome: 'Nome da tarefa',
    descricao: 'Descrição da tarefa',
    responsavel: null
}
```

- Erro: Cannot read property of null

*Solução com ternário*

```
listaDeTarefas.forEach( tarefa => {
    console.log(`
    Nome: ${tarefa.nome}
    Descrição: ${tarefa.descricao}
    Responsável: 
      ${
        (tarefa.responsavel) ?
        tarefa.responsavel.nome : 
        ''
      }
    `)
});
```

*Optional Chaining*

```
listaDeTarefas.forEach( tarefa => {
  console.log(`
  Nome: ${tarefa.nome}
  Descrição: ${tarefa.descricao}
  Responsável: ${tarefa.responsavel?.nome}
    `)
});
```

*Nullish Coalescing*

```
listaDeTarefas.forEach( tarefa => {
  console.log(`
  Nome: ${tarefa.nome}
  Descrição: ${tarefa.descricao}
  Responsável: ${tarefa.responsavel?.nome ?? ‘Sem responsável’}
    `)
});
```

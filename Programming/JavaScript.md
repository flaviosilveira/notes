## JS

### Use hexadecimal and binaries

Just start a number with 0x for hexa and 0b for binary.

```
word = "hello world"
word[10]
word[0xA]
word[0b1010]
```

References
[https://betterprogramming.pub/6-typescript-code-patterns-to-make-your-code-more-robust-bbe54354f39f](https://betterprogramming.pub/6-typescript-code-patterns-to-make-your-code-more-robust-bbe54354f39f)

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

*Pick Utility*
Exclude unused properties from the Client Type
```
interface Client {
  name: string;
  dateOfBirth: Date;
  active: boolean;
}
 
type ClientSummary = Pick<Client, "name" | "active">;
 
const clients: ClientSummary = {
  name: 'John',
  active: true,
};
```

*Exclude utility*
An alternative way is to use Exclude, but Pick is more robust since no changes
are required when an additional propertie is added to Client Type.
```
type ClientSummary = Exclude<Client, 'dateOfBirth'>;
```

*Derived Types*
```
export const payGrades = { 
  low: "1", 
  average: "2", 
  high: "3"
} as const;

type t = typeof payGrades;
type payGradeType = keyof t; // 'low' | 'average' | 'high'
type payValueType =  t[keyof t]; // '1' | '2' | '3'

const hisPay: payValueType = '3'; //okay
const myPay:  payValueType = '4'; // error
```

*Never Type*
```
type DataTypes = 'client' | 'order';

function getProcessName(c: DataTypes): string {
    switch(c) {
        case 'client':
            return 'register' + c;
        case 'order':
            return 'process' + c;
        default:
        return assertUnreachable(c);
    }   
}

function assertUnreachable(x: never): never {
    throw new Error("something is very wrong");
}
```



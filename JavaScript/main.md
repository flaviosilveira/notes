# JavaScript

var -> Exists in all the code
let -> Just exists in the block where it was definied
const -> works exactly like let, but for constants

```
var i = "Valor Inicial de i";
for(let i=0;i<10;i++){
console.log('i inside for= '+i);
}
console.log('i outside for= '+i);
```

window.var_name -> works like a global scope 

---

#### Sum
```array.reduce((a,b) => a+b);```

#### Max
```array.reduce((a,b) => a>b:a?b);```

#### Min
```array.reduce((a,b) => a<b:a?b);```

#### Sort Asc
```array.sort((a,b)=>a-b);```

#### Sort Desc
```array.sort((a,b)=>b-a);```

### Remove False values from array
```array.filter(Boolean);```

#### The same thing as if (foo == 10) then doSomething();
```
let foo = 10;  
foo === 10 && doSomething();
```

#### The same thing as if (foo != 5) then doSomething();
```foo === 5 || doSomething();```


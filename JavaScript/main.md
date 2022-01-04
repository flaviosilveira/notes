# JavaScript

## Execution Context

Memory component - Also know as variable environment, this memory component is responsable for store variables and functions as key-values pairs.

Code component - Also know as Thread of execution. Code component is the place where code is executed line by line.

Javascript is synchronous, single thread language. It can only execute one command at time and in specific order.

### Example 1

```
var a = 2;
var b = 4;

var sum = a + b;

console.log(sum);
```

Browser will execute the code in two phase. Memory and Code.
Javascript will scan thought all the code and allocate memory for all variables and functions.
Variables will be set as undefinied and for functions it will keep the entire code of the function.

In the second phase, it starts going thrhough the whole code line by line. As it encounters var a = 2, it assign it to the memory, the same for b. And then it calculate the sum and store it in the memory. It will print the sum and destroy everything.

### Example 2
```
var n = 2;

function square(num) {
 var ans = num * num;
 return ans;
}

var square2 = square(n);
var square4 = square(4);
```
It will work as in the example 1. When it face the function, it will allocated the function in the memory and jump to the next line.

When the function is called, Javascript will create a new memory/code context. For all the parameters and variables it will allocated memory as undefinied and the execute code line by line. Once the function returns the value, it will destroy that context.

Keep in mind that When a function is invoked in JavaScript, JavaScript creates an execution context. Execution context will get complicated as we nest functions inside a function.

---

- var -> Exists in all the code
- let -> Just exists in the block where it was definied
- const -> works exactly like let, but for constants

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
```array.reduce((a,b) => a>b?a:b);```

#### Min
```array.reduce((a,b) => a<b?a:b);```

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

#### you can use Set to remove duplicate elements from the array
```
const numbers = [2,3,4,4,2,3,3,4,4,5,5,6,6,7,5,32,3,4,5]

//spreading numbers of the object into an array using the new operator
console.log([...new Set(numbers)]) 

// [2, 3, 4, 5, 6, 7, 32]
```


---

### Topics - Advanced Javascript

- Closures
- Prototypes
- Async
- Event Loop
- Microtasks, promises, callbacks
- Debugging and profile your code
-- Start using debugger
-- V8 snapshots / Flamegraphs
- Webpack
- Babbel
- 

---

### Wait Performance

Let's assume I need to doSomething(1) and doSomething(2). Without async/await they'd execute one after another, leading to long latency. But with async, or equivalently with callbacks, the execution can be interleaved. Here's an illustration:

![Wait JS Performance](./images/wait-performance.png)

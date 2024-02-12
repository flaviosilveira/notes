## For...of

used to iterate over iterable objects such as arrays, strings, Maps, NodeLists, and more

```
const colors = ['red', 'green', 'blue'];

for (const color of colors) {
    console.log(color);
}
```

```
const greeting = "Hello, world!";

for (const char of greeting) {
    console.log(char);
}
```

```
const map = new Map([
  ['a', 1],
  ['b', 2],
  ['c', 3]
]);

for (const [key, value] of map) {
    console.log(`${key}: ${value}`);
}
```

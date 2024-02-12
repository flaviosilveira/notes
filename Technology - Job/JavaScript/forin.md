## For...in

used to iterate over the enumerable properties of an object.

```
const person = {
    name: 'John Doe',
    age: 30,
    occupation: 'Software Developer'
};

for (let key in person) {
    console.log(key + ': ' + person[key]);
}
```

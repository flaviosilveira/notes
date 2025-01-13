# Functional Programming
Functional Programming is a programming paradigm that models computation as the evaluation of mathematical functions and emphasizes the use of immutable data and pure functions—functions that avoid shared state and side effects. In this paradigm, functions are first-class citizens, meaning they can be passed as arguments, returned from other functions, and assigned to variables. By focusing on declarative code, where the logic of computation is expressed without explicitly describing control flow, functional programming promotes code that is concise, predictable, and easier to test and maintain. It encourages building software by composing small, reusable, and independent functions, leading to more modular and robust applications.

## Pure Functions
Pure Functions are defined by the following principles:
1. Determinism (Referential Transparency):
	1. Consistent Output: always returns the same output when given the same input;
	2. No Hidden State: does not rely on external state or variables out of its control.
2. No Side Effects:
	1. It does not modify data structures and objects received;
	2. It does not modify external state;
	3. It does not perform I/O (reads or writes on files, databases, etc)

## Immutability
Once a data structured is created, it cannot be changed. If a change is required, you clone the previously existent and return the modified object. This does not apply to primitives, as they are passed by value and not reference.

## Other concepts / Glossary

### First-Class Functions
Functions can be treated as any other variables - they can be assigned to other variables, passed as arguments, be returned by other functions, etc.

### Higher-Order Functions
Functions that take other functions as arguments, or return other functions as results.

### Composition
Build complex functions by combining simpler functions, by using the output of one as the input of another.

### Currying
Transforms a function that takes multiple arguments into a sequence of functions taking a single argument.

### Declarative over Imperative
Focuses on "what" the function wants to achieve rather than "how" it achieves.

### Avoid Shared State
The function should receive everything it needs to work. It should not rely on external (therefore not controllable) state.

### Recursion Over Iteration
Prefer using recursing over loops to process sequential data.

### Lazy Evaluation
Avoid computation until it is strictly necessary to improve performance.

# S.O.L.I.D. Applied to FP

## Single Responsibility Principle (SRP)
Each function should execute one task and one task only (Purity and Focus). When functions have a single responsibility the code is easy to test, maintain, changed, and understand; the Separation of Concerns keeps the code modular and reusable.

## Open/Closed Principle (OCP)
Functions must be opened for extension - that means the ability to alter its functionality by composing with other functions. Functions must be closed for modifications - once the function is ready (developed, tested, sent to production, etc) you cannot alter its implementation to add new features.

## Liskov Substitution Principle (LSP)
Functions should work correctly regardless of the parameters sent to them, as long as the parameters obey the type systems set on the function definition. Replacing a function with a different one that has the same definition for input and returns the same output should not break the program

## Interface Segregation Principle (ISP)
Function interfaces and types should be minimal and only require the strictly necessary parameters. Large function must be broken down into smaller ones until they fulfil the requirements. functions should not depend on or require data they will not use.

## Dependency Inversion Principle (DIP)
When a dependency is unavoidable, prefer to depend on abstract behaviours rather than concrete implementations - it is preferable to accept a parameter with the required behaviour (another function) than call the required function directly into the code. The code calling your function injects the dependency.

# Never Nesting
https://www.google.com/search?q=coding+never+nester&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:841a3533,vid:CFRhGnuXG-4,st:0

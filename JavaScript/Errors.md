# Errors

Docs [https://nodejs.org/api/errors.html]

All errors in JavaScript came or are instances from Error Class.
So, for all errors we have the follow properties: name, code, message, stack.

## Types

When an error appears, it is from one of the follow types:

- Default Javascript Errors: SyntaxError, RangeError, ReferenceError, TypeError
- System Errors
- Custom Errors
- Assertion Errors

## More about default errors

### Range Error
Out of the interval

### Reference Error
Example: A variable not definied

### Syntax error

### Type Error
Example: A funcation that expect a number, and you pass a string

### Assestion Error

### System Error
Example: Try to access a file that does not exist

#### System Error codes

- ENOENT Error no entity
- EISDIR Error is dir
- ENOTDIR Error not dir
- ENOTFOUND Error not found
- ETIMEDOUT Error Timed out
- ECONNREFUSED Error connection refused
- EADDRINUSE Error Address in use
- EADDRNOTAVAIL Error Address not available

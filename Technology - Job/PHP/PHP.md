# PHP

- Trim always return a string

- preg_replace always return an array

- PHP session_write_close() to prevent session blocking in requests
Remember that this is the default behavior to File and Memcached session storage.
Redis, do not lock the session. But, is this safe?

- Constants can never be changed or undefinied

- class_implements function receive a object or a class name and return a array of Interface name

- class_exists function determine if wheter a class exists or not

- A zero as string in a variable, will return false in a if statement

- $ in PHP, comes from Perl. In perl there are other signs to start a variable, they are called sigis. 
Perl got it them Shell. The main use of that can be the interpolation of strings. Without it, you will need a special syntax to do it, or a function, etc.

- PHP supports 10 primitive types. 4 scalar (boolean, integer, float, string), 4 compounds (array, object, callable, iterable), 2 special types (resource, NULL)

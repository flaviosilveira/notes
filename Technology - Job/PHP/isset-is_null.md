# isset / empty / is_null

- isset return true only if a variable is not set as null

- empty return if the variable is a empty string, array,NULL,0,? and even an unset variable

- is_null can be used just for declared variables

- if(isset and !is_null) is redundant.

```

$a = null;

var_dump(isset($a)); // false
var_dump(empty($a)); // true

var_dump(is_null($a)); // true

var_dump(isset($b)); // false
var_dump(is_null($b)); // Error

var_dump(isset($a) && !is_null($a)); // false -- Redundant
```

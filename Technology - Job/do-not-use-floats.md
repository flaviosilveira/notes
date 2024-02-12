# Do not use Floats

JavaScript Example
```
0.1 + 0.2 = 0.30000000000000004
```

No matter how high the precision is, you simply can’t represent the value exactly as it is in base 10 number system.
Thats because of the way floating-point numbers are represented in binary. JavaScript follows the IEEE 754 standard for floating-point arithmetic, a common representation for floating-point numbers in computing, which can lead to precision issues with certain arithmetic operations.

In PHP, 0.1 + 0.2 will often be 0.3, however it's important to note that the internal representation of floating-point numbers in PHP is subject to the same IEEE 754 standard, and the precision issues are still there; they just might not be apparent in simple echo statements depending on how PHP is configured or how the number is being used.

If you insist on using floating point numbers, always round values on each calculation.

PHP Example
```
$customerCredit = 105.00;
$customerCredit = round($customerCredit - 100.00, 2);
$customerCredit = round($customerCredit - 4.95, 2);
$customerCredit = round($customerCredit - 0.05, 2);

var_dump($customerCredit); // float(0)

$customerCredit2 = 105.00;
$customerCredit2 = $customerCredit2 - 100.00;
$customerCredit2 = $customerCredit2 - 4.95;
$customerCredit2 = $customerCredit2 - 0.05;

var_dump($customerCredit2); // float(-1.8041124150158794E-16)
```

And to check if value is zero:
```
function isZeroAmount(float $value, float $epsilon): bool {
    return $value < $epsilon;
}

$amount = 0.0031415;

if (isZeroAmount($amount, 0.01)) {
    echo 'Zero amount';
}
```

For PHP, Use instead:
- BCMath
- MoneyPHP
- GMP

For Javascript, Use: 
- BigDecimal
- decimal.js




# Do not use Floats

```
0.1 + 0.2 = 0.30000000000000004
```

No matter how high the precision is, you simply can’t represent the value exactly as it is in base 10 number system.

If you insist on using floating point numbers, always round values on each calculation.

```
$customerCredit = 105.00;

$customerCredit = round($customerCredit - 100.00, 2);
$customerCredit = round($customerCredit - 4.95, 2);
$customerCredit = round($customerCredit - 0.05, 2);
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

Use instead:
- BCMath
- MoneyPHP




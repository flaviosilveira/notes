## Nand To Tetris

While learning a new programming language, we don't worry about the "how", just with the "what". when we see a code using print, actually p is a number for the computer, r is another number, and we listen about compilers and so on but we don't worry about that. Something need to make some pixels dark and other pixels light to write a HELLO in the screen, but we don't ask "how" just the "what". Thats the abstraction of a programming language, that help us.

### Bit e Byte
Bit é a menor unidade de informação que pode ser transmitida, podendo ter apenas dois valores, 0 ou 1, corte ou passagem de energia. Geralmente trabalhados em múltiplos de bits, os bytes. No começo os bytes tinham tamanhos variáveis, mas foi definido seu uso em octetos, 8 bits. b minúsculo é para representar bit. B maiúsculo é para representar Bytes, como em kB, MB, GB, TB.

Fisicamente o bit é armazenado como uma carga elétrica acima ou abaixo de um padrão determinado dentro de um capacitor dentro de um dispositivo de memória. Mas podem ser representados fisicamente por outros meios.

### Unit 1.1 Boolean algebra
-Truth Table
-Commutative laws - expressions that have the same value
-Associative laws - expressions where doesn't matter the order of the variables. We can change the parenthesis.
(X OR (Y OR Z)) = ((X OR Y) OR Z)
-Distributive Laws - Open a expression (X OR (Y AND Z)) = (X OR y) AND (X OR Z)
-De Morgans Law  / NOT(x AND y) = NOT(x)  OR NOT(y) / NOT(x OR y) = NOT(x) AND NOT(y)
-Idempotence Law - NOT(x) AND NOT(x) = NOT(x)
-Double Negation law - NOT(NOT(x)) = x / NOT(NOT(y)) = y

### Unit 1.2 Truth Table to Boolean Expression
-Get all the rows that have 1 as result, and write a expression that only return one in this row.
- Do that for each row that have 1 as result.
- After that, put all the expressions construct above together with a OR
- Try to simplify the Boolean expression

-We saw that we only need OR, AND and NOT to construct any boolean function
-But we can apply De Morgan Law and do not need the OR operator anymore, So, we just need AND and NOT to construct any boolean function
- We can reduce even more? No without know a new Operator - NAND

- NAND operator - Negation of AND
-And Now we can construct everything with NAND operator / That will be our atomic building block for this system.
You can construct systems using the other gates, but the NAND became popular because was cheap to build.

This course start from the NAND, and you don't need to implement it. It is already done.
Implement a NAND is out of the computer science field, and more in the electronic area.
But here I draw how to implement the NAND using NMOS implementation.

![Nand Implementation](images/nand_implementation.png)

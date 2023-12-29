# Normalization

It is a technique to organize the data in tables and bring:
- Less repetition of data
- Large data structured in small tables
- Proper relationship between tables
- Eliminate redundant data
- Break down large tables into small ones

## First normal form
- Single values Atributes, should not contain multiple values
- Atribute domain should not change
- Unique name for atributes
- Order doesn't matter

## Second normal form
- Should be in the first normal form
- There should be no partial dependency. Fields that depends only by part of the primary key.

## Third normal form
- Should be in the second normal form
- It should not have Transitive Dependency. When a non-prime attribute depends on other non-prime attributes rather than depending upon the prime attributes or primary key

## Boyce-Codd / 3.5 normal form
- Should be in the third normal form
- for any dependency A -> B, A should be a super key.

## Fourth normal form
- Should be in the Boyce-Codd Normal Form
- Should not have any Multi-valued Dependency.

# Recursive function

Recursive function usually runs in Logarithmic space.
Each time it runs, it will be necessary more memory to the next call.

## Tail

Some languages use some tricks to treat that, called tail call optimization or tail call elimination.
With tail optimization, languages don't care about recursive depth.

## Iterative versus Recursive

Some languages do not use tail optimization, like python for example.
For those languages is preferable to use the iterative version for the algorithms.
Using Loops and defining variables.

# Data Structures

## Definition

The way that we organize and agregate data.
The collection of values and the format they are stored in.

### Types

- Linear
- Homogeneous
- Heterogeneous
- Static

## Operations
Regardless of data structure, all of them should do at least 4 operations:
- Access And read values
- Search for an arbitrary values
- Insert values at any point into the structure
- Delete values in the structure

## Array
In languages like Swift or Java, Arrays are homogeneous containers. That means they can only storage the same type of data. 

In other languages, arrays are heterogeneous structures. That means they can store any kind of data.

Array is a contiguous data structure. That means that arrays are store in blocks of memory that are right beside each other with no gaps. So, retriving values will be easier.

For languages that use homogeneous containers, is easy to compiler allocate the space in memory, because it know the value that will comes. But for languages using heterogeneous arrays, since compiler does not know what type to expect, is harder to allocate the right amount of memory. Languages do not want to lose the ways that arrays are stored in memory, side by side, they keep that, but instead of storage in those memory blocks the values, it storages a pointer to where the value will be in memory. So, those languages use a combination of contiguous and non-contiguous structure.

While arrays are really fast accessing values, they're pretty bad at searching.

### Ammortized Constant Space complexity
When you append a value in an array, it calls a resize operaton to allocate memory for that new value.
But instead of allocate just the memory for the new value, it prepares other spaces in order to not need to call resize every time. The growth pace is 0, 4, 8, 16, 25, 35, 46... 

We can say that append has a non constant space complexity, but since some operations do not increase space and other do, in average append operations take constant space. We call that ammortized constant space complexity.

## Linked List

Linear data structure, each element in the list contains the data and a reference to the next node in the list.
Linked lists are powerful in insert values at any point of the list, because it will just change the references of the nodes near by, and not shift all elements like in an array.

### Doubly linked list

### Singly linked list



## Stack

## Queue

## Deque

## Circular Queue

## Set

## Hashmap

## Tree

## Heap

## Graph



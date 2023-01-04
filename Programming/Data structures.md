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


## Stack

## Queue

## Deque

## Circular Queue

## Set

## Hashmap

## Tree

## Heap

## Graph



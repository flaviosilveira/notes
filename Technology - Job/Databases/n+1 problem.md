# N + 1 Problem

## Example
Table Users / Table articles
1 -> N

You need to take all users with all articles of everyone.

```
SELECT * FROM users 

SELECT * FROM articles WHERE user_id = 1
SELECT * FROM articles WHERE user_id = 2
SELECT * FROM articles WHERE user_id = 3
SELECT * FROM articles WHERE user_id = 4
SELECT * FROM articles WHERE user_id = 5
SELECT * FROM articles WHERE user_id = 6
SELECT * FROM articles WHERE user_id = 7
...

```
You will have N+1 queries.

In a code will be something like:
```
$query = 'SELECT * FROM users';
$users = $query->execute;

foreach ($users as $user) {
  $query_articles = 'SELECT * FROM articles WHERE user_id = ' . $user->id;
  $articles = $query_articles->execute;
}
```

In most cases, when we have a Query inside a loop, we have a N+1 Problem.

## Solution
Let's reduce n+1 queries to 2 grouping the ids of the users and getting the articles at once.


```
$query = 'SELECT * FROM users';
$users = $query->execute;
$users_id = map($users, 'id');

$query_articles = 'SELECT * FROM articles WHERE user_id IN ( ' . $users_id . ')';
$articles = $query_articles->execute;
```

## JOIN

A Join will not exactly be quicker than the scenario above.
If each user has about 5 articles, it can consume memory and time.

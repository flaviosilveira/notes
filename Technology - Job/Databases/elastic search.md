## Elastic Search

### Basics

#### Get the doc with _id = 1
```{{url}}/index-name/_doc/1```

####Search

```{{url}}/index-name/_search```

##### Match all, order by some field, desc

```
{
  "query": {
    "match_all" : {}
  },
  "sort": {
      "some-field": "desc"
  }
}
```

##### Will match value1 OR value2
```
{
  "query": { "match": { "some-field": "value1 value2" } }
}
```

##### Will match only if contains value1 AND value2
```
{
  "query": { "match_phrase": { "some-field": "value1 value2" } }
}

##### Must, Should, Must Not
Must -> required, Should -> desirable, Must Not -> Not Desirable

```
{
  "query": {
    "bool": {
      "must": [
        { "match": { "age": "40" } }
      ],
      "should": [
        { "match": { "name": "john" } }
      ],
      "must_not": [
        { "match": { "state": "ID" } }
      ],
    }
  }
}
```

##### Use Query string to use wildcards with the field names
The example below will match fields liek *info.profile.age*, *info.details.age* and so on.

```
{
  "query" : {
    "query_string" : {
      "query" : "11",
      "fields"  : ["info*age"]
    }
  }
}
```

OR

```
{
  "query" : {
    "query_string" : {
      "query" : "info\\*age:11"
    }
  }
}
```

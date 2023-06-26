# Hugo

Getting Start
https://gohugo.io/getting-started/usage/

Migrate
https://github.com/codebrane/octohug

```docker run --rm --name "hugo1" -p 1313:1313 -v $(pwd)/src:/src -v $(pwd)/output:/output -e HUGO_THEME="ananke" -e HUGO_WATCH="true" jojomi/hugo```

```docker run --rm --name "hugo2" -v $(pwd)/src:/src -v $(pwd)/output:/output -e HUGO_THEME="ananke" jojomi/hugo```

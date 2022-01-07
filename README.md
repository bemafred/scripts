# scripts
A collection of useful scripts

#snippets

``` 
find . -mindepth 1 -maxdepth 1 -type d -exec sh -c '! [ -d "$1/.git" ] && echo "not git repo: $1"' _ {} \;
```


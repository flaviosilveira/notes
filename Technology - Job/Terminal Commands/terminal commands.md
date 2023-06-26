## Terminal Commands

#### Rename

Rename all files matching **_example_480_490kbps.mp4*, and replacing *_example_480_490kbps* by *empty*.

```rename 's/_example_480_490kbps//' *_example_480_490kbps.mp4```

#### Grep

```grep -ril ‘what you looking for’ | grep -v '.svn'```

```grep -rl 'HTTP_SERVER' templates/content/ | xargs sed -i 's/HTTP_SERVER/HTTPS_SERVER/g'```

#### Find

```find . -name "product_listing_col.php"```


##### Applying a command for files that not match the pattern


Find files that not match name **_ePrep_480_490kbps.mp4*, and moving them to inside folder *400x300*.

```find . -type f ! -name '*_ePrep_480_490kbps.mp4' -exec mv {} ./400x300/. \;```

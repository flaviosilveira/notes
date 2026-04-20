## VIM

#### CTags
A tag file is an index. It is recommended to create a file for each project

```ctags -R --language-force=php .```

This command above will create an index in folder tags

#### Tabs

Navigate between tabs gt and gT
Close tab with *:tabclose*
To maintain the current tab only :tabonly
Suffix with ! to override non saved changes

```:g/match line/%s/oq/peloq/g```

```:g/.*/.s/oq/peloq/g```

```:%s/oq/peloq/g```

Use /c with command above to confirm each replace

:set all - Show all vim variables values
:set foo? - Show foo value
:set local - Only local buffer

:set tabstop=4 - tab length
:set expandtab - turn off tab
:set shiftwidth=4 - indent length

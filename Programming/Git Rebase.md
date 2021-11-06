# Git Rebase

## Use for re-order some commits
```git rebase -i sha1-commit```

## Abort if something got wrong
```git rebase --abort```

## Reword a commit
Inside de interactive mode, you have the commands.
Use the reword command and change the commit message

## Editing the files of the commit itself
Using the edit command inside the inrective mode, you will be moved to a stage where you are editing the commit.
After update everything that you want, use continue, and not commit.
```git rebase --continue```

## Squash commits
Use the s command to combined the commit with the one above it

## Execute arbitrary commands beetween commits
In the interactive mode, you can execute arbitrary commands between the commits.
Maybe you can run a code sniffer tool between them and check wich one break it.

## Break between them

## Drop commits



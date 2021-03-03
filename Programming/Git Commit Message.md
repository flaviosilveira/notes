# The seven rules of a great Git commit message

## Write a single short (less than 50 characters) line summarizing the change, followed by a blank line and then a more thorough description.

Use ```git -m``` when you do not need a body for the commit, in the case of simple changes for example. And use a text editor when you need to write a body for the commit message.

To check the results, use:
```git log --oneline```
```git shortlog```

## Limit the subject line to 50 characters.

If you’re having a hard time summarizing, you might be committing too many changes at once

## Capitalize the subject line

## Do not end the subject line with a period

## Use the imperative mood in the subject line

Writing this way can be a little awkward at first. We’re more used to speaking in the indicative mood, which is all about reporting facts. That’s why commit messages often end up reading like this:

- Fixed bug with Y (not good)
- Changing behavior of X (not good)

To remove any confusion, here’s a simple rule to get it right every time.

A properly formed Git commit subject line should always be able to complete the following sentence:

```If applied, this commit will your subject line here```
For example:

```If applied, this commit will refactor subsystem X for readability```

Notice how this doesn’t work for the other non-imperative forms:

```If applied, this commit will fixed bug with Y```

## Wrap the body at 72 characters

## Use the body to explain what and why vs. how



# Commit Message Rule

Define commit message rule like below:

> inspired by [semantic-commit-messages.md](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716)

Format: `<type>(<issue number>): <subject>`

## Example

```
feat(#1): add login button
^--^  |   ^--------------^
|     |     |
|     |     +-> Summary in present tense.
|     |
|     | +-> Associated issue number
|
+-------> Type: chore, docs, feat, fix, refactor, style, or test.
```

More Examples:

- `feat`: (new feature for the user, not a new feature for build script)
- `fix`: (bug fix for the user, not a fix to a build script)
- `docs`: (changes to the documentation)
- `style`: (formatting, missing semi colons, etc; no production code change)
- `refactor`: (refactoring production code, eg. renaming a variable)
- `test`: (adding missing tests, refactoring tests; no production code change)
- `chore`: (updating grunt tasks etc; no production code change)

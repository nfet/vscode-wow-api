# README (Forked Version)

## Synchronizing

### Fetch First
```shell
git fetch upstream
```
Sync your fork later (when needed)

When upstream updates:

```shell
git checkout master
git fetch upstream
git merge upstream/master
git push origin master
```
That keeps your fork current.

## Pushing Changes

This fork will always rebase from `upstream/master` and push to `origin/master`.

```shell
git fetch upstream
git checkout master
git rebase upstream/master
git push --force-with-lease origin master
```

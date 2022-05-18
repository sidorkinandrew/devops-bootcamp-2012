##  Introduction Sequence 

### 1: Introduction to Git Commits

#### Introduction to Git Commits

```bash
git commit
git commit
```

#### Branching in Git

```bash
git branch bugFix
git checkout bugFix
```

#### Merging in Git

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
```

#### Rebase Introduction

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
```

### Ramping Up

#### Detach yo' HEAD

```bash
git checkout c4
```

#### Relative Refs

```bash
git checkout c3
```

#### Relative Refs #2 (~)

```bash
git branch -f bugFix c0
git branch -f main c6
git checkout c1
```

#### Reversing Changes in Git

```bash
git reset HEAD^
git checkout pushed
git revert pushed
```

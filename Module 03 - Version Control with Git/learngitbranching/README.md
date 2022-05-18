##  Introduction Sequence 

### 1: Introduction to Git Commits

#### 1. Introduction to Git Commits

```bash
git commit
git commit
```

#### 2. Branching in Git

```bash
git branch bugFix
git checkout bugFix
```

#### 3. Merging in Git

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
```

#### 4. Rebase Introduction

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
```

### 2. Ramping Up

#### 1. Detach yo' HEAD

```bash
git checkout c4
```

#### 2. Relative Refs

```bash
git checkout c3
```

#### 3. Relative Refs #2 (~)

```bash
git branch -f bugFix c0
git branch -f main c6
git checkout c1
```

#### 4. Reversing Changes in Git

```bash
git reset HEAD^
git checkout pushed
git revert pushed
```

### 3. Moving Work Around

#### 1: Cherry-pick Intro

```bash
git cherry-pick c3 c4 c7
```

#### 2. Interactive Rebase Intro

```bash
git rebase -i HEAD~4
# omit c2, c3 -> c5 -> c4
```

### 4. A Mixed Bag

#### 1. Grabbing Just 1 Commit

```bash
git rebase -i HEAD~3
git branch -f main bugFix
```

#### 2. Juggling Commits

```bash
git rebase -i HEAD~2  # c3 -> c2
git commit --amend
git rebase -i HEAD~2  # c2 -> c3
git branch -f main bugFix
```

#### 3.  Juggling Commits #2

```bash
git checkout main
git cherry-pick newImage
git commit --amend
git cherry-pick caption
```

#### 4. Git Tags

```bash
git tag v0 c1
git tag v1 c2
git checkout c2
```

#### 5. Git Describe

```bash
git describe main
git describe side
git describe bugFix
```

###  5. Advanced Topics 

#### 1. Rebasing over 9000 times

```bash
git rebase main bugFix
git rebase bugFix side
git rebase side another
git branch -f main another
```

#### 2. Multiple Parents

```bash
git branch bugWork HEAD~^2~
```

#### 2. Branch Spaghetti

```bash
# easy way
git checkout one
git cherry-pick c4 c3 c2
git checkout two
git cherry-pick c5 c4 c3 c2
git branch -f three c2
```

```bash
# hard way
git rebase -i one # c4 -> c3 -> c2
git branch -f one main
git branch -f three c2
git branch -f main c5
git rebase -i two # c5 -> c4 -> c3 -> c2
git branch -f two main
git branch -f main c5
```


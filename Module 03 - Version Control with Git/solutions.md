<details>
<summary>Exercise 1: Clone and create new repository </summary>
 <br />

**steps:**
```sh

# clone repository & change into project dir
git clone https://github.com/githubtraining/hellogitworld
cd hellogitworld

# remove remote repo reference and create your own local repository
rm -rf .git
git init
git add .
git commit -m "Initial commit"

# create git repository on Gitlab and push your newly created local repository to it
git remote add origin git@github.com:User/UserRepo.git
git push -u origin master

```

</details>

******

<details>
<summary>Exercise 2: .gitignore </summary>
 <br />

**create .gitignore file with following entries**
```sh
.idea 
.DS_Store
out 
build
```

**remove cached commited files and commit .gitignore file**
```sh
git rm --cached .DS_Store

# -r for directories
git rm -r --cached .idea
git rm -r --cached out
git rm -r --cached build

# commit & push the changes
git add .
git commit -m "remove ignored files"
git push
```

</details>

******

<details>
<summary>Exercise 3: Feature branch </summary>
 <br />

**steps**
```sh
# create feature branch
git checkout -b feature/changes

# update a file in the local repository

# update another file in the local repository

# check and commit  changes
git diff
git add .
git commit -m "Updated file 1 and file 2"

# pull remote changes and push your changes to remote
git pull -r 
git push
```

</details>

******

<details>
<summary>Exercise 4: Bugfix branch </summary>
 <br />

**steps**
```sh
# create bugfix branch
git checkout -b bugfix/changes

# fix any spelling error

# check and commit  changes
git diff
git add .
git commit -m "Fixed spelling error"

# pull remote changes and push your changes to remote
git pull -r 
git push
```

</details>

******

<details>
<summary>Exercise 5: Merge request </summary>
 <br />

**steps**
```sh
# merge feature branch into master
git checkout master
git merge feature/changes 

# push the merge to remote master
git push
```

</details>

******

<details>
<summary>Exercise 6: Fix Merge conflict </summary>
 <br />

**steps**
```sh
# switch to bugfix branch
git checkout bugfix/changes

# make some edits

# commit this change locally
git add .
git commit -m "updated code version"

# bring bugfix branch uptodate with master branch
git merge master

# you will get a merge conflict here

# fix merge conflict and when done check the state
git state

# if all fixed, you can commit and push the merge into your bugfix branch
git push

```

</details>

******

<details>
<summary>Exercise 7: Revert commit </summary>
 <br />

**steps**
```sh
# on bugfix branch

# fix/update any file

# commit change locally
git add .
git commit -m "Fixed yet another spelling error"

# fix/update another file

# commit change locally
git add .
git commit -m "updated another file"

# push both commits to remote
git push

# revert last commit and push the revertion into remote repo
git revert HEAD
git push

```

</details>

******

<details>
<summary>Exercise 8: Reset commit </summary>
 <br />

**steps**
```sh
# on bugfix branch

# update some file

# commit change locally
git add .
git commit -m "some filed updated"

# reset the last local commit, meaning move to the previous commit
git reset --hard HEAD~

```

</details>

******

<details>
<summary>Exercise 9: Merge </summary>
 <br />

**steps**
```sh
# merge bugfix branch into master
git checkout master
git merge bugfix/changes

```

</details>

******

<details>
<summary>Exercise 10: Delete Branches </summary>
 <br />

**steps**
```sh

# delete branches locally
git branch -D bugfix/changes
git branch -D feature/changes

```

</details>

******

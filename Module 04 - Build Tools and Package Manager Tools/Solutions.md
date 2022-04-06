</details>

******

<details>
<summary>Exercise 0: Clone project and create own Git repository </summary>
 <br />

**steps:**

```sh
# clone repository & change into project dir
git clone https://github.com/codefresh-contrib/gradle-sample-app
cd gradle-sample-app

# remove remote repo reference and create your own local repository
rm -rf .git
git init 
git add .
git commit -m "initial commit"

# create git repository on Gitlab and push your newly created local repository to it
git remote add origin git@github.com:{github-user}/{github-repo}.git
git push -u origin master

```

</details>

******

<details>
<summary>Exercise 1: Run tests, clean and build jar artifact </summary>
 <br />

**steps**

```sh

./gradlew tests

./gradlew clean

./gradlew build

```

</details>

******

<details>
<summary>Exercise 2: Start application </summary>
 <br />

**steps:**
```sh

java -jar ./build/libs/gradle-example-0.0.1-SNAPSHOT.jar &

```

</details>

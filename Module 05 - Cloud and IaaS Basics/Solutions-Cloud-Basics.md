</details>

******

<details>
<summary>Exercise 0: Clone Git Repository </summary>
 <br />

**steps:**

```sh
# clone repository & change into project dir
git clone https://github.com/johnpapa/node-hello
cd node-hello

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
<summary>Exercise 1: Package NodeJS App </summary>
 <br />

**steps**

```sh
npm pack

```

</details>

******

<details>
<summary>Exercise 2, 3: Create and prepare server on AWS </summary>
 <br />

**steps:**
```sh
# ssh into your newly created server (replace all usernames below with `ubuntu` instead of `ec2-user` if the image is based on Ubuntu)
ssh -i ~/id_rsa ec2-user@{ec2-public-ip-address}

# install nodejs and npm
apt install -y nodejs npm

```

</details>

******

<details>
<summary>Exercise 4: Copy App and package.json </summary>
 <br />

**steps:**
```sh
# secure copy files from local machine to server. Execute from project's root folder.
scp -i ~/id_rsa ./node-hello-1.0.0.tgz ec2-user@{server-public-ip-address}:/opt
scp -i ~/id_rsa ./package.json ec2-user@{server-public-ip-address}:/opt

```

</details>

******

<details>
<summary>Exercise 5: Run Node App </summary>
 <br />

**steps:**
```sh
# ssh into ec2 instance
ssh -i ~/id_rsa ec2-user@{server-public-ip-address}
cd /opt

# unpack the node-hello file
tar zxvf node-hello-1.0.0.tgz

# change into unpacked directory called "package"
cd package

# install dependencies
npm install

# run the application
node index.js &

```

</details>

******

#!/bin/bash

# prepare environment, install all tools
apt update

echo "install node, curl, wget, net-tools"
apt install -y nodejs curl net-tools
echo ""
echo "################"
echo ""

# read user input for log directory
echo -n "Set log directory location for the application (absolute path): "
read LOG_DIRECTORY
if [ -d $LOG_DIRECTORY ]; then
  echo "$LOG_DIRECTORY already exists"
else
  mkdir -p $LOG_DIRECTORY
  echo "A new directory $LOG_DIRECTORY has been created"
fi
export LOG_DIR=$LOG_DIRECTORY


# display nodeJS version
node_version=$(node --version)
echo "NodeJS version $node_version installed"

# display npm version
npm_version=$(npm --version)
echo "NPM version $npm_version installed"

echo ""
echo "################"
echo ""

# create and change to the package directory
mkdir package
cd package

# fetch NodeJS project from github bucket
wget -4 https://raw.githubusercontent.com/sidorkinandrew/devops-bootcamp-2021/main/Module%2002%20-%20Operating%20Systems%20%26%20Linux%20Basics/exercises/package/package.json
wget -4 https://raw.githubusercontent.com/sidorkinandrew/devops-bootcamp-2021/main/Module%2002%20-%20Operating%20Systems%20%26%20Linux%20Basics/exercises/package/server.js

# set all needed environment variables
export APP_ENV=dev
export DB_PWD=mysecret
export DB_USER=myuser 

# install application dependencies
npm install

# start the nodejs application in the background
node server.js &

# display that nodejs process is running
ps aux | grep node | grep -v grep

# display that nodejs is running on port 3000
netstat -ltnp | grep :3000
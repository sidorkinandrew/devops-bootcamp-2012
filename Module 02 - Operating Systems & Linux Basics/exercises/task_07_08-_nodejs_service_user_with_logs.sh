#!/bin/bash

# prepare environment, install all tools
apt update
NEW_USER=myapp

echo "install node, curl, wget, net-tools"
apt install -y nodejs curl net-tools  
echo ""
echo "################"
echo ""

# read user input for log directory
echo -n "Set log directory location for the application (absolute path): "
read LOG_DIRECTORY
if [ -d $LOG_DIRECTORY ]
then
  echo "$LOG_DIRECTORY already exists"
else
  mkdir -p $LOG_DIRECTORY
  echo "A new directory $LOG_DIRECTORY has been created"
fi

# display nodeJS version
node_version=$(node --version)
echo "NodeJS version $node_version installed"

# display npm version
npm_version=$(npm --version)
echo "NPM version $npm_version installed"

echo ""
echo "################"
echo ""

# create new user to run the application and make owner of log dir
useradd $NEW_USER -m
chown $NEW_USER -R $LOG_DIRECTORY

# executing the following commands as new user using 'runuser' command

# fetch NodeJS project from github
runuser -l $NEW_USER -c "mkdir package && cd package"
runuser -l $NEW_USER -c "wget -4 https://raw.githubusercontent.com/sidorkinandrew/devops-bootcamp-2021/main/Module%2002%20-%20Operating%20Systems%20%26%20Linux%20Basics/exercises/package/package.json"
runuser -l $NEW_USER -c "wget -4 https://raw.githubusercontent.com/sidorkinandrew/devops-bootcamp-2021/main/Module%2002%20-%20Operating%20Systems%20%26%20Linux%20Basics/exercises/package/server.js"


# start the nodejs application in the background, with all needed env vars with new user myapp
runuser -l $NEW_USER -c "
    export APP_ENV=dev && 
    export DB_PWD=mysecret && 
    export DB_USER=myuser && 
    export LOG_DIR=$LOG_DIRECTORY && 
    npm install && 
    node server.js &"

# display that nodejs process is running
ps aux | grep node | grep -v grep

# display that nodejs is running on port 3000
netstat -ltnp | grep :3000
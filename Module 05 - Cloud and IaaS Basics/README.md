## Exercises for Module "Cloud & IaaS"

Use a sample Node.JS repository

You are asked to create a simple NodeJS app. Everyone on your team wants to be able to see it themselves and share with the project managers, so they ask you to make it available online, so everyone can access it.

#### EXERCISE 0: Clone Git Repository

For that you can use a sample Node.JS git repository.

    clone the git repository and
    create your own project/git repo from it

#### EXERCISE 1: Package NodeJS App

To have just 1 file, you create an artifact from the Node App. So you do the following:

    Package your Node app into a tar file ( npm pack )

#### EXERCISE 2: Create a new server

Your company uses AWS as Infrastructure as a Service platform, instead of having on-premise servers. So you:

    Create a new EC2 instance on AWS

#### EXERCISE 3: Prepare server to run Node App

Now you have a new fresh server nothing installed on it. Because you want to run a NodeJS application you need to install Node and npm on it:

    Install nodejs & npm on it

#### EXERCISE 4: Copy App and package.json

Having everything prepared for the application, you finally:

    Copy your simple Nodejs app tar file and package.json to the cloud server

#### EXERCISE 5: Run Node App

    Start the node application in detached mode ( npm install and node server.js commands)

#### EXERCISE 6: Access from browser - configure firewall

You see that the application is not accessible through the browser, because all ports are closed on the server. So you:

    Open the correct port on EC2 by editing the attached security group
    and then access the Node.JS UI from browser via public IP

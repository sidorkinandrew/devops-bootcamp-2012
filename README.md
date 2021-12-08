# devops-bootcamp-2021

## Topics covered:
 
- ## Module 01 - Introduction to DevOps 
- DevOps Bootcamp Overview
- What is DevOps?
- Roles and Responsibilities of a DevOps Engineer
- How DevOps fits in the whole Software Development lifecycle
 
## Module 02 - Operating Systems & Linux Basics 
 
- Introduction to Operating Systems
- Virtualization
- Package Manager - Installing Software
- Working with Vim Editor
- Users & Permissions
- Linux File System
- Basic Linux Commands
- Shell Scripting
- Environment Variables
- Networking
- SSH - Secure Shell
- 
## Module 03 - Version Control with Git 
 
- Introduction to Version Control and Git
- Full Git Tutorial:
-     Basic Concepts of Git
-     Setup git repository (remote and local)
-     Working with Git (git status, git commit, git add, git push)
-     Initialize Git project locally
-     Concept of Branches
-     Merge Requests
-     Deleting Branches
-     Avoiding Merge Commits (rebase)
-     Resolving Merge Conflicts
-     Don't track certain files (.gitignore)
-     Save work-in-progress changes (git stash)
-     Going back in history (git checkout)
-     Undoing commits (git revert, git reset)
-     Merging Branches
-     Git for DevOps

- Database Types

##  Build and Package Manager Tools

-     What are Build Tools and Package Managers?
-     How to build an artifact?
-     How to run the application artifact?
-     How to publish the application artifact to artifact repository?
-     Build Tools for Java (gradle and maven examples)
-     Dependency Management in Software Development
-     Package Manager in JavaScript applications - Build and run applications in JS
-     Build Tools & Docker

-    Why Build Tools are relevant for DevOps Engineers?

● Java: maven | gradle
● JavaScript: npm | yarn | webpack
● Python: pip 
● C/C++: conan
● C#: NuGet
● Golang: dep
● Ruby: RubyGems


##  Cloud & Infrastructure as a Service Basics (Digital Ocean)

https://github.com/bbachi/react-nodejs-example
https://github.com/pmendelski/java-react-example

-    Cloud & Infrastructure as a Service Concepts

- Working with a cloud server:

-    Setup Server on DigitalOcean (Droplet)
-    Install Java on Cloud Server
-    Deploy and run an application on Cloud Server
-    Create a Linux User to login to Server (instead of using Root User)

##  Artifact Repository Manager with Nexus 

https://gitlab.com/nanuchi/java-app
https://gitlab.com/nanuchi/java-maven-app

-    What is an Artifact Repository Manager?
-    Install and run Nexus on Cloud Server
-    Different Repository Types (proxy, hosted, etc.) explained
-    Different Repository Formats (maven, docker, npm, etc.) explained
-    Upload Jar File to Nexus (maven and gradle projects)
-    Nexus API and Repository URLs
-    Blob stores
-    Browsing Components - Components vs Assets
-    Cleanup Policies
-    Scheduled Tasks

##### Nexus manual installation

apt update
apt install openjdk-8-jre-headless
apt install net-tools
cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz
adduser nexus
chown -R nexus:nexus nexus-3.28.1-01
chown -R nexus:nexus sonatype-work
vim nexus-3.28.1-01/bin/nexus.rc
run_as_user="nexus"
su - nexus
/opt/nexus-3.28.1-01/bin/nexus start
ps aux | grep nexus
netstat -lnpt

##  Containers with Docker 

https://gitlab.com/nanuchi/developing-with-docker

-    What is a Container?
-    Docker Components and architecture explained
-    Docker vs. Virtual Machine
-    Main Docker Commands
-    Debugging a Docker Container
-    Demo Project Overview - Docker in Practice (Nodejs App with MongoDB and MongoExpress UI)
-    Developing with Containers
-    Docker Compose - Running multiple services
-    Dockerfile - Building our own Docker Image
-    Private Docker Repository - Pushing our built Docker Image into a private Registry on AWS
-    Deploy containerized app
-    Docker Volumes - Persist data in Docker
-    Volumes Demo - Configure persistence for our demo project

HadoLinter for Docker -
https://github.com/hadolint/hadolint

#### Best practises
● Best practices for writing Dockerfiles: 
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
● Docker development best practices: 
https://docs.docker.com/develop/dev-best-practices/
● Tips for Caching, reducing Image size, maintainability, reproducibility: 
https://www.docker.com/blog/intro-guide-to-dockerfile-best-practices/


- Docker & Nexus

-    Create Docker Images Repository on Nexus
-    Push/Pull Docker Image from/to Nexus Repository Manager
-    Install Nexus with Docker
-    Configure insecure repositories in Docker Engine


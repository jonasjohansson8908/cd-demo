# Continuous development pipeline with CircleCI, Kubernetes and Google Cloud Platform
This repository provides the necessary code to be able to replicate the demo that can be found HERE. The demo is about how you 
combine CircleCI, Google cloud platform, Docker and Kubernetes in order to achieve continuous deployment. 

The demo show how every push to the github master branch will be processed by CircleCI and deployed to Google cloud platform.
![](readme_img/website.png) 

# Getting Started
This section briefly explains what you need inorder to run the program.

## Prerequisites, following the demo
The demo requires that you have the following accounts and software.

* A terminal with Docker installed.
* A Google cloud platform account with credits on it. If you haven't used Google cloud platform before you will get some free credits when you are creating an account.
* Google cloud SDK installed on the terminal.
* A Github account.
* A CircleCI account.

## Prerequisites, running the code locally
The demo requires that you have the following accounts and software.

* (Using docker) A terminal with Docker installed.
* (Using Python) >= Python 3.7


## Running the code locally 
If you want to run the code just to test it, do the following steps.

With docker:
* Start a terminal with Docker installed
* Enter `docker build -t server`
* Enter `docker run -p 3000:3000 server`
* In a web browser enter `localhost:3000`

With python:
* Start terminal


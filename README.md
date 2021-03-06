# Continous deployment demo

### Continuous deployment pipeline with CircleCI, Kubernetes and Google Cloud Platform
This repository provides the necessary code to be able to replicate the demo that can be found [HERE](https://youtu.be/oEZfV3XWw7w). The demo is about how you 
combine CircleCI, Google cloud platform, Docker, and Kubernetes in order to achieve continuous deployment. 

The demo shows how every push to the github master branch will be processed by CircleCI and deployed to Google cloud platform.
![](readme_img/website.png) 

**Youtube-link:** https://youtu.be/oEZfV3XWw7w

# Getting Started
This section briefly explains what you need to run the program.

## Prerequisites, following the demo
The demo requires that you have the following accounts and software.

* Docker for terminal usage.
* A Google cloud platform account with credits on it. If you haven't used Google cloud platform before you will get some free credits when you are creating an account.
* Google cloud SDK installed for usage in the terminal.
* A Github account.
* A CircleCI account.

# Running the code locally

## Prerequisites

* (Using docker) A terminal with Docker installed.
* (Using Python) `Python^3.7`

## Instructions

### Docker:
* Start a terminal with Docker installed
* Enter `docker build -t server`
* Enter `docker run -p 3000:3000 server`
* In a web browser enter `localhost:3000`

### Python:
`python3 src/server_python.py`

### Tests
`python3 -m pytest`

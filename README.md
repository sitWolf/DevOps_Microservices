[![CircleCI](https://circleci.com/gh/sitWolf/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/sitWolf/DevOps_Microservices/tree/master)

## Project Overview

This project operationalizes a Machine Learning Microservice API. 

A pre-trained, `sklearn` model is provided, that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). A Python flask app—in a provided file, `app.py`— serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

This project operationalizes this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project the following options are available:
* Testing the project code using linting
* A Dockerfile that containerizes this application
* Log statements in the source code for this application
* Deployment using Kubernetes
* Make a prediction

---

## Setup the Environment
### Virtualenv
* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Docker
* Install [Docker](https://docs.docker.com/get-docker/). Docker enables separating the application from your infrastructure.

### Hadolint
Install [Hadolint](https://github.com/hadolint/hadolint). Hadolint enables linting of Docker imgaes
```bash
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.8.0/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint
```

### Minikube
* Install [Minikube](https://minikube.sigs.k8s.io/docs/start/). Minikube is local Kubernetes, focusing on making it easy to develop for Kubernetes.

### Kubectl
* Install [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/). The kubectl command line tool lets you control Kubernetes clusters. For more information of Kubernetes, see this [link](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/).

---

## Deploying `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

---

## Makefile

A provided Makefile provides a template for installing dependencies, setup and linting.
```bash
cat Makefile
```
---

## Supplemental material
* When deploying on Cloud9, a supplemental file is provided to increase memory limits
```bash
(base) ec2-user:~ $ df -h
(base) ec2-user:~ $ ./resize.sh
(base) ec2-user:~ $ df -h
```

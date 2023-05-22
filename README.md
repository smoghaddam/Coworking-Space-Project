# Coworking Space Service
In this project I build and deploy containers to ECR with AWS CodeBuild and create Kubernetes manifests configuration to deploy a Kubernetes cluster to AWS EKS. Finally I capture the application Logging and Metrics in AWS CloudWatch. 

## Description
This project demonstrates a streamlined workflow for building and deploying containers to Amazon Elastic Container Registry (ECR) using AWS CodeBuild. It also includes the configuration of Kubernetes resources in Amazon Elastic Kubernetes Service (EKS) and the setup of logging and metrics using AWS CloudWatch. All screenshots are provided in the [screenshots](/screenshots/) folder.

## Prerequisites
Before getting started, ensure you have the following:
 * An AWS account with sufficient privileges to create resources like ECR, CodeBuild, EKS, and CloudWatch.
 * AWS CLI and AWS SDKs installed on your development machine.
 * Docker installed locally to build and push containers to ECR.

## Setup
1. Clone the [repository](https://github.com/smoghaddam/Coworking-Space-Project) and navigate to the project directory.
2. Set up an ECR repository for storing your Docker images:
 * Run the necessary AWS CLI command to create the ECR repository.
3. Set up an EKS cluster:
 * Follow the AWS documentation to create an EKS cluster.
 * Ensure that your kubeconfig is properly configured to interact with the EKS cluster.
4. Configure AWS CodeBuild:
 * Create a CodeBuild project using the provided `buildspec.yml` file.
 * Specify the appropriate build configuration, including the ECR repository and Dockerfile location.
5. Configure CloudWatch Logging and Metrics:
 * Set up log group and log stream names for your application logs.
 * Enable the necessary metrics for monitoring your EKS cluster and services.
 * Adjust logging and metric configurations as needed.

## Usage
1. Build and push Docker images to ECR:
 * Commit your application code and trigger the CodeBuild project.
* CodeBuild will build your Docker image and push it to the specified ECR repository.
2. Deploy Kubernetes resources:
 * Update the Kubernetes configuration files in the [deployment](/deployment/) directory to match your application requirements.
 * Use the `kubectl` command to apply the configuration files and deploy your application to EKS.
3. Monitor logging and metrics:
 * Access the CloudWatch Logs console to view application logs and system-level logs from EKS worker nodes.
 * Use the CloudWatch Metrics console to monitor relevant metrics and set up alarms for critical events.

## Author
Sepideh Saebi Moghaddam
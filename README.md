# Overview

This project includes configurations and templates for deploying cloud resources and setting up a continuous integration/continuous deployment (CI/CD) pipeline. It consists of:

## Contents

1. `cloudformation-template.yaml` - AWS CloudFormation template to create an S3 bucket and an EC2 instance.
2. `gitlab-ci.yml` - GitLab CI/CD YAML configuration file for building, testing, and deploying a Node.js application.
3. `lambda packages` - Sample Python package configuration folder for building an AWS Lambda function.

## cloudformation-template.yaml

This CloudFormation template creates an S3 bucket and an EC2 instance in AWS.

### Usage

- Log in to the AWS Management Console.
- Navigate to the AWS CloudFormation service and create a new stack using this template.
- Customize the template parameters as needed, such as the EC2 instance type and S3 bucket name.

## gitlab-ci.yml

This file contains the configuration for GitLab's CI/CD pipeline, automating the build, test, and deployment phases for a Node.js application.

### Pipeline Structure

- **Build**: Installs dependencies.
- **Test**: Runs unit tests.
- **Deploy**: Contains a mock deployment script.

### Setup

- Create a new project in GitLab and commit your Node.js application code along with this `gitlab-ci.yml` file.
- Configure your GitLab runner.
- Push changes to your repository to trigger the pipeline.

## lambda package

Includes a Python script (`lambda_function.py`) and a `requirements.txt` file for creating a basic AWS Lambda function.

### Deployment

To package and deploy the Lambda function:
1. Make package.sh executable by using chmod +x package.sh
2. Run `package.sh` to create a deployment package.
3. Upload the `lambda_function.zip` to AWS Lambda.
4. Set the handler in AWS Lambda to `lambda_function.lambda_handler`.

### Function Details

- **lambda_function.py**: The Python script for the Lambda function.
- **requirements.txt**: Lists the dependencies required for the Lambda function.
- **package.sh**: A script to package the Lambda function and its dependencies.

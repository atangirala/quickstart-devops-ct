# quickstart-devops-ct
## DevOps Foundation Platform on the AWS Cloud

This Quick Start deploys a DevOps foundation platform that integrates Amazon Web Services (AWS) services such as AWS CodePipeline, AWS CodeCommit, AWS CodeBuild, AWS CodeDeploy, Amazon CloudWatch and Amazon SNS.

The DevOps foundation platform uses these AWS services to provide continuous integration and continuous delivery capabilities and build a fully automated and robust software delivery pipeline. This solution uses AWS CodePipeline to model the software delivery workflow. AWS CodeCommit is a fully managed service which hosts the private Git repositories of source code. The pipeline picks up a change in a repository and starts the flow. It invokes the next step for building the checked out code with CodeBuild. The output of the build process proceeds to the next step in the pipeline of deploying the build artefact using AWS CodeDeploy on a deployment group of auto-scaling EC2 instances.

The deployment includes a sample Node.js application.

The AWS CloudFormation templates included with the Quick Start automates the following:

- Deploying the DevOps foundation platform into a new virtual private cloud (VPC)
- Deploying the DevOps foundation platform into an existing VPC in your AWS account

This reference architecture is automated by AWS CloudFormation templates that you can customize to meet your specific requirements.

For architectural details, best practices, step-by-step instructions, and customization options, see the deployment guide.

To post feedback, submit feature ideas, or report bugs, use the **Issues** section of this GitHub repo.
If you'd like to submit code for this Quick Start, please review the [AWS Quick Start Contributor's Kit](https://aws-quickstart.github.io/). 

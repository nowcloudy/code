# Terraform Infrastructure as Code (IaC) Repository

This repository contains Terraform code for provisioning infrastructure on AWS using Infrastructure as Code (IaC) principles.

## Terraform Code

The Terraform code in this repository creates the following resources:

- VPC: Creates a Virtual Private Cloud (VPC) with a specified CIDR block.
- Subnet: Creates a subnet within the VPC with a specified CIDR block.
- EC2 Instances: Creates EC2 instances within the subnet with specified instance types and attached EBS volumes.
- S3 Bucket: Creates an S3 bucket with a specified name.

The code is organized into separate modules for each resource type, following best practices for reusability and modularity. Each module has its own `main.tf`, `variables.tf`, and `output.tf` files.

## GitHub Actions Workflow

The repository also includes a GitHub Actions workflow located at `.github/workflows/terraform.yml`. This workflow automates the validation, scanning, and release processes for the Terraform code.

The workflow performs the following tasks:

1. Checks out the repository code.
2. Sets up the Terraform CLI.
3. Initializes the Terraform working directory.
4. Validates the Terraform code.
5. Checks the formatting of the Terraform code.
6. Generates an execution plan.
7. Performs security scanning on the Terraform code.
8. (Commented Out) Applies the Terraform changes to the infrastructure.
9. Commits the changes (including the workflow file) and pushes them back to the repository.

**Note:** The `terraform apply` stage is commented out in the workflow file to prevent accidental changes in this demonstration. Uncomment the stage when you're ready to apply changes to your infrastructure.

## Usage

To use this Terraform code and GitHub Actions workflow:

1. Clone the repository to your local machine.
2. Update the necessary variables in the respective `variables.tf` files according to your requirements.
3. Add any additional modules or resources as needed.
4. Run `terraform init` to initialize the working directory.
5. Run `terraform validate` to validate the Terraform code.
6. Run `terraform plan` to generate an execution plan.
7. (Optional) Add any security scanning commands or checks to the workflow file for additional validation.
8. Push the code and workflow file to your GitHub repository.
9. GitHub Actions will automatically run the workflow on each push to a branch that starts with `feature/`.
10. View the workflow status and logs in the Actions tab of your repository.
11. (Uncommented) When ready, uncomment the `terraform apply` stage to apply changes to your infrastructure.

Please ensure you have the necessary credentials and permissions to deploy resources on your AWS account.

For detailed instructions on using Terraform, refer to the official Terraform documentation.

## Contributing

Contributions to this repository are welcome. If you find any issues or want to suggest improvements, please open an issue or submit a pull request.


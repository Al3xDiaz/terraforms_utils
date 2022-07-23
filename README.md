# terraforms_utils
## Set of utilities for Terraform.
### Config .env file:

```bash
cat .env || echo AWS_ACCESS_KEY_ID=""\nAWS_SECRET_ACCESS_KEY="" > .env
```

### create ssh key:

```bash
mkdir -p files && mkdir -p files/ssh-keys
cat files/ssh-keys/terraform-key.pub || ssh-keygen -b 3072 -t rsa -f `pwd`/files/ssh-keys/terraform-key -q -N '' -C 'Terraform'
```

### Commands Terraform:

```bash
terraform init # Initialize the Terraform configuration.
terraform plan # Generate a plan for the resources that Terraform would create.
terraform plan -var-file=variables.tfvars # Generate a plan for the resources that Terraform would create.
terraform apply # Apply the plan to the infrastructure.
terraform destroy # Destroy the infrastructure.
terraform output # Display the output values of the plan.
terraform validate # Validate the configuration.
```

### Create terraform.tfvars file:

```bash
cat ./terraform/dev.tfvars || echo "# Declare variables
instance_type = \"t2.micro\"
image_id = \"ami-0b9c9d9c6b80f9f9e\"
tags = {
  Name = \"terraform-test\"
}" > ./terraform/dev.tfvars
```

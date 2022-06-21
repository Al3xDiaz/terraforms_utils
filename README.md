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
terraform init # Initialize the Terraform configuration.
terraform plan # Generate a plan for the resources that Terraform would create.
terraform apply # Apply the plan to the infrastructure.
terraform destroy # Destroy the infrastructure.
terraform output # Display the output values of the plan.
terraform validate # Validate the configuration.


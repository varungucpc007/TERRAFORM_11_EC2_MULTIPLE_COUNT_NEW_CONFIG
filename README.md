# TERRAFORM_11_EC2_MULTIPLE_COUNT_NEW_CONFIG

## Project Overview

This Terraform project is an improved multiple EC2 setup using `count` with a cleaner variable-based configuration. It is useful for managing repeated EC2 instances with names, tags, and configurable values.

## What This Project Creates

- Multiple EC2 instances
- Variable-based instance count
- Improved tagging
- Configurable AMI and instance type
- Output values for all created instances

## Technologies Used

| Technology | Purpose |
| --- | --- |
| Terraform | Infrastructure as Code |
| AWS EC2 | Virtual servers |
| `count.index` | Unique naming for repeated resources |

## Recommended Files

```text
TERRAFORM_11_EC2_MULTIPLE_COUNT_NEW_CONFIG/
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md
```

## Example Count Naming

```hcl
tags = {
  Name = "web-server-${count.index + 1}"
}
```

This creates names such as:

- `web-server-1`
- `web-server-2`
- `web-server-3`

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured
- Valid AMI ID
- EC2 permissions

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Type `yes` when prompted.

## Change Number of Instances

Update the instance count variable in `terraform.tfvars`.

Example:

```hcl
instance_count = 3
```

Then run:

```bash
terraform plan
terraform apply
```

## Destroy Resources

```bash
terraform destroy
```

## Important Notes

- `count.index` starts from `0`.
- Use `count.index + 1` for cleaner names.
- Reducing count can destroy instances.
- Review `terraform plan` carefully before applying.

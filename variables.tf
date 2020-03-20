## main creds for AWS connection
variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret key"
}

variable "vpc_name" {
    description = "VPC for building demos_tf"
}

variable "vpc_region" {
    description = "VPC region australia_tf"
}

variable "vpc_cidr_block" {
    description = "VPC CIDR block_tf"
}

variable "vpc_instance_tenancy" {
    description = "VPC Instance tenancy"  
}

variable "vpc_enable_dns_hostnames" {
    description = "VPC DNS hostname "  
}

variable "vpc_public_subnet_1_cidr" {
    description = "VPC public subnet 1 CIDR"
}

variable "vpc_private_subnet_1_cidr" {
  description = "VPC private subnet 1 CIDR"
}

variable "vpc_public_subnet_1_cidr_tag_name" {
  description = "Tag name for VPC public subnet"
}

variable "vpc_private_subnet_1_cidr_tag_name" {
  description = "Tag name for VPC private subnet"
}

variable "OperationalSupportTeam_tag" {
    description = "Name of the operational support team."
  
}




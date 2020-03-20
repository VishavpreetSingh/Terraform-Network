## Labels
aws_access_key_id="xxxxxxx"
aws_secret_access_key="xxxxxx"
vpc_region="ap-southeast-2"
vpc_name="vpc_name_tf"
vpc_cidr_block="10.10.0.0/26"
##By default instance_tenancy is default.
vpc_instance_tenancy = "default" 
##By default enable_dns_hostnames is false.
vpc_enable_dns_hostnames = "true"
vpc_public_subnet_1_cidr = "10.10.0.0/28"
vpc_private_subnet_1_cidr = "10.10.0.16/28"

## tags
vpc_public_subnet_1_cidr_tag_name = "Public-Subnet_tf"
vpc_private_subnet_1_cidr_tag_name = "Private-Subnet_tf"
OperationalSupportTeam_tag = "Testing-tf"

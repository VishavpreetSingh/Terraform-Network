#Define a VPC
resource "aws_vpc" "vpc_name"{
    cidr_block = "${var.vpc_cidr_block}"
    instance_tenancy = "${var.vpc_instance_tenancy}"
    enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
    tags = {
        Name = "${var.vpc_name}"
        OperationalSupportTeam = "${var.OperationalSupportTeam_tag}"
    }
}

#Define a public subnet in VPC
resource "aws_subnet" "public-subnet" {
    vpc_id = "${aws_vpc.vpc_name.id}"
    cidr_block = "${var.vpc_public_subnet_1_cidr}"
    tags = {
        Name = "${var.vpc_name}-public-subnet-tf"
        OperationalSupportTeam = "${var.OperationalSupportTeam_tag}"
    }
}

#Define a private subnet in VPC
resource "aws_subnet" "private-subnet" {
    vpc_id = "${aws_vpc.vpc_name.id}"
    cidr_block = "${var.vpc_private_subnet_1_cidr}"
    tags = {
        Name = "${var.vpc_name}-private-subnet-tf"
        OperationalSupportTeam = "${var.OperationalSupportTeam_tag}"
    }
}

# Public route table
resource "aws_route_table" "public_route_table" {   
    vpc_id =  "${aws_vpc.vpc_name.id}"
    tags = {
        Name = "${var.vpc_name}-publicRouteTable-tf"
    }
}

#Private route table
resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.vpc_name.id}"
    tags = {
        Name = "${var.vpc_name}-privateRouteTable-tf"
    }
}

# Route table association with public subnets
resource "aws_route_table_association" "aws_route_table_association_public_subnet" {
    subnet_id      = "${aws_subnet.public-subnet.id}"    
    route_table_id = "${aws_route_table.public_route_table.id}"    
}

resource "aws_route_table_association" "aws_route_table_association_private_subnet" {
    subnet_id = "${aws_subnet.private-subnet.id}"
    route_table_id = "${aws_route_table.private_route_table.id}"  
}





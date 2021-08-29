###########----------- CLUSTER -----------###########

variable "project" {
  description = "the project name"
}

variable "environment" {
  description = "the environment that this will run in"
}

variable "cidr-blocks" {
  description = "a list of IPs to allow API access (kubectl) from"
  type = list
}

variable "public-subnet-ids" {
  description = "the public subnets to use for eks"
  type = list
}

variable "private-subnet-ids" {
  description = "the private subnets to use for eks. the nodes will be deployed into these"
  type = list
}

variable "vpc-id" {
  description = "the vpc to put everything in"
}

variable "eks-version" {
  description = "the eks version to use for the master/control plane cluster"
}


###########----------- NODES -----------###########

variable "node-group-name" {
  description = "name of the node group"
  type = list(string)
}

variable "node-group-count" {
  description = "count of the node group"
}

variable "ami-type" {
  description = "The ami type to use for the nodes"
}

variable "ec2-instance-type" {
  description = "The instance type for the nodes"
  type = list
}

variable "disk-size" {
  description = "disk size for the instance of node group"
}

variable "node-private-subnet-ids" {
  description = "The private subnet ids for the nodes"
  type = list
}

variable "desired-size" {
  description = "The desired capacity for the ASG"
}

variable "max-size" {
  description = "The max size for the ASG"
}

variable "min-size" {
  description = "The min size for the ASG"
}

variable "ec2-ssh-key" {
  description = "The keypair to use for ssh into the nodes"
}
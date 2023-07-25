module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.7"

  account_id = "_U_L7us0TlGrA1298QAJZw"
  delegate_token = "NDJlN2EzODc0NTMxNmI5OTM5YTNkNGZlOWFhMzhmZWI="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "harness-delegate-ng"
  manager_endpoint = "https://app.harness.io/gratis"
  delegate_image = "harness/delegate:23.07.79904"
  replicas = 1
  upgrader_enabled = false
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
#
#terraform {
#  required_version = ">= 1.0"
#
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = ">= 4.66"
#    }
#  }
#}
#
#provider "aws" {
#  region = "us-east-1"
#}
#
#data "aws_ami" "amazon-2" {
#  most_recent = true
#
#  filter {
#    name = "name"
#    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
#  }
#  owners = ["amazon"]
#}
#
#resource "aws_instance" "my-ec2" {
#  ami = data.aws_ami.amazon-2.id
#  instance_type = "t2.micro"
#}

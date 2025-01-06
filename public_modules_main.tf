module "local_module" {
  source = "../../../../../../../platform/src/stacks/accountStack"
#  source = "comment/local_module"
  aws_profile = ""
  pgadmin_password = ""
  region = ""
  state_bucket = ""
}

module "remote_module" {
#  source = "terraform-aws-modules/comment/ignore"
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 2.1.0"
}

provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source      = "git::https://github.com/your-org/ec2-module.git"
  ami_id      = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       # Replace with a valid Subnet ID
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

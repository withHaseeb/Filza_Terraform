# All variables as it would be defined in the .tfvars file.

ami_image          = "ami-080e1f13689e07408"
aws_region         = "us-east-1"
bucket_name        = "filza-infra-tf-state"
create_instances   = true
deploy_igw_enabled = true
deploy_nat_enabled = true
deploy_tgw_enabled = true
deploy_vgw_enabled = true
instance_type      = "t2.micro"
key_pair_name      = "filza-aws-kp3"


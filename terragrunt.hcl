terraform {
  source = "${path_relative_from_include()}//"
}

# include {
#   path = find_in_parent_folders()
# }


# Indicate the input values to use for the variables of the module.
inputs = {
  AWS_REGION="us-west-1"
  AMI={
        us-west-1 = "ami-08ca3fed11864d6bb" # Ubuntu 20.04 x86
    }
  EC2_USER="lucas"
  PUBLIC_KEY_PATH="~/.ssh/aws_ec2.pub"

}

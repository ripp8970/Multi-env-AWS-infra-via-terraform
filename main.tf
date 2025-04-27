module "dev-app" {
  source = "./aws-infra-terra"
  my-env = "dev"
  instance_type = "t2.micro"
  ami_id = "ami-04f167a56786e4b09" #ubuntu ami id
  instance_count = 1
}

module "stg-app" {
  source = "./aws-infra-terra"
  my-env = "stg"
  instance_type = "t2.medium"
  ami_id = "ami-04f167a56786e4b09" #ubuntu ami id
  instance_count = 2
}

module "prd-app" {
  source = "./aws-infra-terra"
  my-env = "prd"
  instance_type = "t2.large"
  ami_id = "ami-04f167a56786e4b09" #ubuntu ami id
  instance_count = 3
}
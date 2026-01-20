terraform {
  backend "s3" {
    bucket = "terraform-state-kerolos"
    key    = "infra/terraform.tfstate"
    region = "eu-west-1"
  }
}

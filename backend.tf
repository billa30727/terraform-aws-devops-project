terraform {
  backend "s3" {
    bucket       = "terraform-devops-state-1790523111"
    key          = "terraform-devops-project/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}

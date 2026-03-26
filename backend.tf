terraform {
  backend "s3" {
    bucket       = "terraform-state-bucket-manujayakumar96"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}

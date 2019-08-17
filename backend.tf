terraform {
  backend "s3" {
    bucket = "kubernetesstate.com"
    key    = "terraform"
    region = "us-west-1"
  }
}

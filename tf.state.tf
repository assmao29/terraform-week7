## Add tfstate to s3 bucket

terraform {
  backend "s3" {
    bucket         = "maos3-bucket"
    key            = "terraform-week7.tfstate"
    region         = "us-east-1"
 
     
  }
}
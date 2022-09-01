terraform {
    backend "s3" {
        bucket = "anu2-bucket"
        key = "new.tfstate"
        region = "us-east-1"
      
    }
}
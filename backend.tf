# storing Terraform state files in an AWS S3 bucket so that the statefile (containing all info about our infrastructure) is not local and it safe
# Dynamodb specifies the name of the DynamoDB table to use for state locking. 
# State locking ensures that only one Terraform run can modify the infrastructure at a time, helping prevent conflicts and corruption of the state file
terraform {
  backend "s3" {
    bucket         = "week10-ism08-bucker"
    key            = "week10sf/terraform.tfstate" # create a folder week10sf and put inside the tf state file
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraformLock1"
  }
}
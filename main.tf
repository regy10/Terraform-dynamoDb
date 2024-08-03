terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}
 
provider "aws" {
  region  = "us-east-1"
}
 
 
resource "aws_dynamodb_table" "GuestList" {
  name           = "GuestList"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Email"
 
  attribute {
    name = "Email"
    type = "S"
  }
 
  attribute {
    name = "Name"
    type = "S"
  }
  global_secondary_index {
    name            = "NameIndex"
    hash_key        = "Name"
    projection_type = "ALL"
 
  }
 
  global_secondary_index {
    name            = "CountryIndex"
    hash_key        = "Country"
    projection_type = "ALL"
  }
 
 
  attribute {
    name = "Country"
    type = "S"
  }
 
 
  tags = {
    Name        = "dynamodb-table"
    Environment = "Training"
  }
}
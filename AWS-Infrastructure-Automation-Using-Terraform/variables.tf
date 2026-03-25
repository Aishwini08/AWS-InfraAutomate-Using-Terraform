variable "region" {
    description = "The AWS region to deploy resources in."
    default     = "us-east-1"
}


variable "db_password" {
  type      = string
  sensitive = true
}

variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-west-1"
}


variable "db_password" {
  description = "Master password for the RDS PostgreSQL instance"
  type        = string
  sensitive   = true
}
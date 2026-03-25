variable "vpc_id" {
  description = "The VPC ID where ECS resources will be deployed"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnets for ECS instances"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security Group ID of the ALB"
  type        = string
}

variable "target_group_arn" {
  description = "Target Group ARN for the ECS service"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for ECS nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 2
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "ecs-cluster"
}

variable "aws_region" {
  description = "AWS region for ECS"
  type        = string
  default     = "us-west-1"
}
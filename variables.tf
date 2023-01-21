variable "namespace" {
  description = "The project names for unique resource naming"
  default     = "Arbutus"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "us-west-1"
  type        = string
}
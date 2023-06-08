variable "project" {
    type = string
    description = "Name of the GCP Project"
}

variable "region" {
    type = string
    description = "Region of the GCP Project"
}

variable "location" {
    type = string
    description = "Location of the GCP Bucket"
}

variable "backend_bucket" {
    type = string
    description = "Name of the backend bucket"
}

variable "environment" {
  type = string
  description = "Deployment environment"
}

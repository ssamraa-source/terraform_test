variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "location" {
  description = "The location for the GCS bucket"
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The storage class for the GCS bucket"
  type        = string
  default     = "STANDARD"
}

variable "environment" {
  description = "The environment label for the bucket"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "The owner label for the bucket"
  type        = string
  default     = "data-team"
}

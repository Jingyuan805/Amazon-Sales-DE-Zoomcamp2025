variable "credentials" {
  description = "My Credentials"
  # default = # your path to the keys
}


variable "project" {
  description = "Project"
  default = "oceanic-hold-448420-m7"
}

variable "region" {
  description = "Region"
  default = "us-central1"
}

variable "location" {
  description = "Project Location"
  default = "US"
}

variable "bq_dataset_name" {
  description = "May BigQuery Dataset Name"
  default = "project_dateset"
}

variable "gcs_bucket_name" {
  description = "May Storage Bucket Name for DE Zoomcamp Project"
  default = "oceanic-hold-448420-m7-de-zoomcamp-project-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default = "STANDARD"
}
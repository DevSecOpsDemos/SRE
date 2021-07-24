variable "project" {
  description = "Name of project"
  type        = string
  default     = "devopsindiasummit"
}

variable "credentials_file_local_path" {
  description = "Local Path for Credentials file"
  type        = string
  default     = ""
}
variable "region" {
  description = "Name of region"
  type        = string
  default     = "us-central1"
}

variable "az" {
  description = "Name of az"
  type        = string
  default     = "us-central1-c"
}

variable "image" {
  description = "Name of image"
  type        = string
  default     = "debian-cloud/debian-9"
}

variable "machine_type" {
  description = "Name of machine_type"
  type        = string
  default     = "f1-micro"
}

variable "tags" {
  description = "Name of machine_type"
  type        = list(string)
  default     = ["http-server"]
}

variable "name" {
  description = "Name of application"
  type        = string
  default     = "apache-test"
}


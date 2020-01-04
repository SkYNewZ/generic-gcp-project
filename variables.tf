variable "billing_account" {
  type    = string
  default = "01A0CE-A063FD-A3938F"
}

# skynewz.dev organization
variable "organization_id" {
  type        = number
  description = "GCP organization to place project in"
  default     = 648655515396
}

variable "folder_name" {
  type        = string
  description = "Folder name to place project into"
}

variable "project_name" {
  type        = string
  description = "Project name to create with"
}

variable "project_id" {
  type        = string
  description = "Project id to create with"
}

variable "enable_app_engine" {
  type        = bool
  description = "Enable AppEngine ?"
  default     = true
}

variable "vcs" {
  type        = string
  description = "VCS which will trigger Cloud Build"
  default     = ""
}

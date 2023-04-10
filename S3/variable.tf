variable "aws_access_key" {
  type    = string
  default = ""
}
variable "aws_secret_key" {
  type    = string
  default = ""
}
variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "bucketprefix" {
  type    = string
  default = "balaparthayou-"
}

variable "versioning" {
  type        = string
  description = "(Optional) A state of versioning."
  default     = "Enabled"
}

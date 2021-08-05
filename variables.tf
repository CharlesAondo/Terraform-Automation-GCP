variable "bucket_name" {
      type = string
      description = "Bucket name"
}
variable "bucket_loaction" {
      type = string
      default = "us-east4"
}
variable "project_id" {
      type = string
      default = "project-od"
}

variable "storage_class" {
      type = string
      default = "region"
}

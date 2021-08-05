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
      default = "timeless-vet-international"
}

variable "storage_class" {
      type = string
      default = "region"
}

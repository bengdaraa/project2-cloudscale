variable "resource_group_name" {
  type        = string
  default     = "project2-cloudscale-rg"
}
variable "location" {
  type        = string
  default     = "eastus"
}
variable "docker_image" {
  type        = string
  default     = "your_dockerhub_username/cloudscale-app:v1" # REPLACE WITH DOCKER NAME
}

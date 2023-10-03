variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}
variable "policy_name" {
  type        = string
}
variable "region" {
  type        = string
}
variable "max_retention_days" {
  type        = number
}

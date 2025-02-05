variable "EUREKA_URL" {
  description = "The URL of the Eureka server"
}

variable "JWT_SECRET" {
  description = "The secret"
}

variable "JWT_EXPIRATION_TIME" {
  description = "The expiration time of the JWT token"
}

variable "VERSION" {
  description = "The version of the application"
}

variable "project_id" {}
variable "region" {}
variable "zone" {}
variable "IMAGE_NAME" {}

variable "service_name" {
  description = "The name of the Cloud Run service"
  default = "dorm-service"
  
}
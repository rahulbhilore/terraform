variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc_cidr blcok"
  type        = string
}

variable "public-web-subnet-1-cidr" {
  default     = "10.0.1.0/24"
  description = "public_web_subnet1"
  type        = string
}

variable "public-web-subnet-2-cidr" {
  default     = "10.0.2.0/24"
  description = "public_web_subnet2"
  type        = string
}

variable "private-app-subnet-1-cidr" {
  default     = "10.0.3.0/24"
  description = "private_app-subnet1"
  type        = string
}

variable "private-app-subnet-2-cidr" {
  default     = "10.0.4.0/24"
  description = "private_app-subnet2"
  type        = string
}


variable "private-db-subnet-1-cidr" {
  default     = "10.0.5.0/24"
  description = "private_db_subnet1"
  type        = string
}


variable "private-db-subnet-2-cidr" {
  default     = "10.0.6.0/24"
  description = "private_db_subnet2"
  type        = string
}

variable "ssh-locate" {
  default     = "0.0.0.0/0"
  description = "0.0.0.0/0"
  type        = string
}

variable "database-instance-class" {
  default     = "db.t2.micro"
  description = "The Database Instance Type"
  type        = string
}

variable "multi-az-deployment" {
  default     = true
  description = "Create a standby DB Instance"
  type        = bool
}



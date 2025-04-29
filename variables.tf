variable "ami_id" {
  description = "AMI ID do Amazon Linux"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "web_ingress_cidrs" {
  description = "CIDRs permitidos para acesso HTTP"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ssh_ingress_cidrs" {
  description = "CIDRs permitidos para acesso SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "min_size" {
  description = "Tamanho mínimo do ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Tamanho máximo do ASG"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Capacidade desejada do ASG"
  type        = number
  default     = 1
}

variable "ssm_vpc_id" {}
variable "ssm_public_subnet_1" {}
variable "ssm_public_subnet_2" {}
variable "ssm_public_subnet_3" {}

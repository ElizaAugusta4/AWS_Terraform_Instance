data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


variable "aws_region" {
  description = "Região da AWS para criar os recursos"
  default     = "us-east-2"  # Substitua pela região desejada
}


variable "instance_type" {
  description = "Tipo de instância EC2"
  default     = "t2.micro"
}


variable "bucket_name" {
  description = "Nome do bucket S3"
  default     = "bucket-name"  # Substitua por um nome único para o bucket S3
}

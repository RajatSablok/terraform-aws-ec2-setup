variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "FirstTerraformInstance"
}

variable "key_pair_name" {
  description = "Name of the PEM file"
  type        = string
  default     = "MyKeyPair"
}

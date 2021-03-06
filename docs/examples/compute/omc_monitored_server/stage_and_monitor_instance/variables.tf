#BMC Provider Configuration
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}

variable "region" {
  description = "Region to create your instance, valid values are us-phoenix-1, or us-ashburn-1"
}

#SSH access to the server
variable "ssh_public_key" {
  description = "Public key to load onto a server during creation to allow for OPC user ssh access"
}

variable "ssh_private_key" {
  description = "Private key for terraform to use to ssh to the server for post creation instance configuration"
}

#Instance specific variables
variable "ad" {
  description = "Value of 1,2 or 3 expected to represent the AD your start your server instance in"
}

variable "shape_name" {
  description = "BMC server shape common name, find valid values in the BMC console drop down"
}

variable "image_name" {
  description = "BMC server image common name, find valid values in the BMC console drop down"
}

variable "compartment_name" {
  description = "Compartment that the OMC managed server will be created in"
}

variable "server_display_name" {
  description = "Display name for your server instance"
}

variable "hostname" {
  description = "DNS hostname for your server instance"
}

variable "subnet_id" {
  description = "OCID for the subnet in which the OMC managed server instance will run"
}

#Oracle Management Cloud Specific Variables
variable "omc_reg_key" {
  description = "OMC Agent registration key"
}
variable "omc_agent_path" {
  description = "Path to your downloaded Oracle Management Cloud AgentInstall.zip"
}

variable private_key {
  description = "Private key"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable docker_instance_image {
  description = "Disk image docker instance"
  default = "docker-instance-image"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
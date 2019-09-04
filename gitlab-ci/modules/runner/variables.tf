variable private_key {
  description = "Private key"
}
variable zone {
  description = "Zone"
  default     = "us-central1-a"
}
variable runner_disk_image {
  description = "Disk image for reddit db"
  default = "docker-instance-image"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default     = "us-central1"
}

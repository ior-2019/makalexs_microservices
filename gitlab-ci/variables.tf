variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "us-central1"
}
variable runner_disk_image {
  description = "Disk image"
}
variable private_key {
  description = "Private key"
}
variable zone {
  description = "Zone"
  default     = "us-central1-a"
}
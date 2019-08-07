variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable docker_instance_image {
  description = "Docker instance image"
}
variable private_key {
  description = "Private key"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable instance_count {
  description = "Instance count"
  default     = "1"
}

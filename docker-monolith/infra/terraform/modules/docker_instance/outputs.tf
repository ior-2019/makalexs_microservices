output "docker_instance_external_ip" {
  value = "${google_compute_instance.docker-instance.network_interface.0.access_config.0.nat_ip}"
}
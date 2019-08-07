resource "google_compute_instance" "docker-instance" {
  name         = "docker-instance"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["docker-instance"]
  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = "${var.docker_instance_image}"
    }
  }
  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "default"
    # использовать ephemeral IP для доступа из Интернет
    access_config {
        nat_ip = "${google_compute_address.docker-instance-ip.address}"
    }
  }
  connection {
    type  = "ssh"
    host  = "${google_compute_instance.docker_instance.network_interface.0.access_config.0.nat_ip}"
    user  = "makalexs"
    agent = false
    # путь до приватного ключа
    private_key = "${file(var.private_key)}"
  }

}

resource "google_compute_address" "docker-instance-ip" {
    name = "docker-instance-ip"
    region = "${var.region}"
}

resource "google_compute_instance" "runner" {
  name         = "gitlab-runner"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["gitlab-runner"]
  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = "${var.runner_disk_image}"
    }
  }
  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "default"
    # использовать ephemeral IP для доступа из Интернет
    access_config {
      nat_ip = "${google_compute_address.runner_ip.address}"
    }
  }
  connection {
    type  = "ssh"
    host  = "${google_compute_instance.runner.network_interface.0.access_config.0.nat_ip}"
    user  = "makalexs"
    agent = false
    # путь до приватного ключа
    private_key = "${file(var.private_key)}"
  }
  provisioner "file" {
    source      = "../modules/runner/setup_runner.sh"
    destination = "/home/makalexs/setup_runner.sh"
    connection {
      type        = "ssh"
      user        = "makalexs"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/makalexs/setup_runner.sh",
      "/home/makalexs/setup_runner.sh"
    ]
    connection {
      type        = "ssh"
      user        = "makalexs"
    }
  }
}

resource "google_compute_address" "runner_ip" {
    name   = "gitlab-runner-ip"
    region = "${var.region}"
}

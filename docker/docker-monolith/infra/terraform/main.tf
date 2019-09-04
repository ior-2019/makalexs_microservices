terraform {
  # Версия terraform
  required_version = "0.12.5"
}

provider "google" {
  # Версия провайдера
  version = "~> 2.5"
  # ID проекта
  project = "${var.project}"
  region  = "${var.region}"
}

module "docker_instance" {
  source         = "./modules/docker_instance"
  private_key    = "${var.private_key}"
  zone           = "${var.zone}"
  docker_instance_image = "${var.docker_instance_image}"
}

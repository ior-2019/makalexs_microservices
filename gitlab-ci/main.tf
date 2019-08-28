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

module "runner" {
  source         = "../modules/runner"
  private_key    = "${var.private_key}"
  zone           = "${var.zone}"
  runner_disk_image = "${var.runner_disk_image}"
}
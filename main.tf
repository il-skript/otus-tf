# Создание VPC и подсети
resource "yandex_vpc_network" "study" {
  name = "network17"
}

resource "yandex_vpc_subnet" "network17" {
  name           = "network17"
  zone           = "ru-central1-a"
  v4_cidr_blocks = ["10.147.17.0/27"]
  network_id     = yandex_vpc_network.study.id
}

# Создание диска и виртуальной машины
resource "yandex_compute_disk" "boot_ubuntu24" {
 # count = 2
  name     = "boot_ubuntu24"
  zone     = "ru-central1-a"
  image_id = "fd80293ig2816a78q276" # ubuntu-2404-lts-oslogin-v20240902
  size     = 17
  }

resource "yandex_compute_instance" "study" {
  name                      = "vm-study-1"
  allow_stopping_for_update = true
  platform_id               = "standard-v3"
  zone                      = "ru-central1-a"

  resources {
    cores  = "2"
    memory = "4"
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot_ubuntu24.id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.network17.id
    nat       = true
  }
  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
   }
}




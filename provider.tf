terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  folder_id = "b1gkh81nngtp1c97fhk9"
  zone      = "ru-central1-a"
  } 



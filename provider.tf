terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

# provider "yandex" {
#   folder_id = "b1gkh81nngtp1c97fhk9"
#   zone      = "ru-central1-a"
#   service_account_key_file = "/root/terraform01/key.json"
#   } 


#------------------------------
provider "yandex" {
  service_account_key_file      = var.service_key_file
  cloud_id                      = var.cloud_id
  folder_id                     = var.folder_id
  zone                          = var.default_zone
}
output "internal_ip" {
  description = "Внутренний IP адрес виртуальной машины"
  value       = yandex_compute_instance.study.network_interface.0.ip_address
}

output "external_ip" {
  description = "Внешний IP адрес виртуальной машины"
  value       = yandex_compute_instance.study.network_interface.0.nat_ip_address
}

output "internal_ip" {
  description = "Internal Ip of Instance"
  value       = google_compute_instance.apache_server.network_interface.0.network_ip
}

output "external_ip" {
  description = "External Ip of Instance"
  value       = google_compute_instance.apache_server.network_interface.0.access_config.0.nat_ip
}

output "id" {
  description = "ID of Instance"
  value       = google_compute_instance.apache_server.id
}


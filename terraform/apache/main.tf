provider "google" {
 credentials = file(var.credentials_file_local_path)

 project = var.project
 region  = var.region
 zone    = var.az
}



resource "google_compute_instance" "apache_server" {
    name = var.name
    machine_type = var.machine_type
    tags = var.tags
    boot_disk {
        initialize_params {
            image = var.image
        }
    }

    metadata_startup_script =  file("${path.module}/files/apache2.sh")

    scheduling {
        preemptible = true
        automatic_restart = false
    }

    network_interface {
        network ="default"
        access_config {
        }
    }
}
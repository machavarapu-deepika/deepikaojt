resource "google_compute_instance" "controller" {
  boot_disk {

    initialize_params {
      image = var.image
      size  = var.size 
      type  = var.type 
    }

  }
  machine_type = var.machine 
  name         = var.name 

  network_interface {
    subnetwork = var.subnet 
  }

  tags = var.tags 
  zone = var.zone 
}

resource "google_compute_instance" "host1" {
  boot_disk {

    initialize_params {
      image = var.image
      size  = var.size 
      type  = var.type 
    }

  }
  machine_type = var.machine 
  name         = var.name1 

  network_interface {
    subnetwork = var.subnet 
  }

  tags = var.tags 
  zone = var.zone 
}

resource "google_compute_instance" "host2" {
  boot_disk {

    initialize_params {
      image = var.image
      size  = var.size 
      type  = var.type 
    }

  }
  machine_type = var.machine 
  name         = var.name2 

  network_interface {
    subnetwork = var.subnet 
  }

  tags = var.tags 
  zone = var.zone 
}



# Compute resource
# 2021-04-27
# DevOps Team: Hugo 

provider "google" {
  # version = "3.5.0"

  credentials = file("../jira-gce/tfsvc.json")

  project =  "${var.gcp_project}"
  region = "${var.region}"
  zone = "${var.zone}"
 

}

resource "google_compute_instance" "gce" {
  name         = "${var.env_tag}jira"
  machine_type = var.machine_type
  zone = "${var.zone}"
 


 

  boot_disk {
    auto_delete = "${var.auto_delete_disks}"

    initialize_params {

      image =  "${var.boot_disk_image}" 
      size = "${var.boot_disk_size}"
    }
  }

   
  network_interface {

    network = "default"
    
    # subnetwork = var.private_ip_enabled ? google_compute_address.private[0].subnetwork : data.google_compute_subnetwork.data.self_link
    # network_ip = var.private_ip_enabled ? google_compute_address.private[0].address : null

    access_config {
       
    }
  }


  can_ip_forward = true

  
}

 
 


 

 

 




 

 
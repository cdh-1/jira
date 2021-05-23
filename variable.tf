# variable "image" {
#     default = "windows-sql-cloud/sql-ent-2019-win-2019"
# }

# variable "environment" { default = "dev"}

# variable "machine_type" { default = "n2-highmem-2" }

# variable "machine_type_dev" { default = "n2-highmem-16" }

## ---------------------
## Provider configuration
## ---------------------
variable "gcp_project" {
  description = "Project ID in GCP"
  default = "angelic-digit-313810"

}

variable "region" {
  description = "Region in which to manage GCP resources"
}

variable "env_type" {
  description = "What environment is being configured (development, pt)"
  default = "project"
}

 variable "env_tag" {
   description = "Tag to be used in the Instance names for a defined environment"
   default = "project"
 }

variable "zone" {
  description = "zone, where the resources are created"
}

variable "bucket_location" {
    description = "Continent/Region to create bucket in"
    default     = "US"
}

 
## ---------------------
## Environment configuration
## ---------------------
# variable "name" {
#   description = "The name of the environment, unique within the project and region/zone"
# }

# variable "description" {
#   description = "Environment description"
# }
/*
variable "instance_preemptible" {
  description = "Enable preemptible scheduling on all GCE instances"
  default     = false
}

variable "instance_automatic_restart" {
  description = "Enable automatic restart of the instance if terminated by Compute Engine"
  default     = true
}
*/

## ---------------------
## Build metadata
## ---------------------
# variable "git_repo" {
#   description = "Git repository used to build the environment"
# }

# variable "git_branch" {
#   description = "Git branch used to build the environment"
# }

# variable "git_commit" {
#   description = "The short hash of the git commit used to build the environment"
# }

# variable "build_creator" {
#   description = "The user who ran the build"
# }

# variable "build_method" {
#   description = "The method used to run terraform (make, jenkins, etc)"
#   default     = "manual"
# }

## ---------------------
## Cloud Instance
## ---------------------
variable "machine_type" {
  description = "Instance type of the   server"
  default = null
}

variable "boot_disk_size" {
  description = "Size in GB of the boot disk for the   server. If null, inherit the size from disk image."
  default     = null
}



variable "boot_disk_image" {
  description = "The disk image to use as a boot disk"
  default = null
}

variable "boot_disk_image_project" {
  description = "The project containing the boot disk image"
  default = null
}

variable "auto_delete_disks" {
  description = "Whether to automatically delete disks when destroying the instance"
  type        = bool
  default     = false
}

variable "private_ip_enabled" {
  description = "Enable private IP for jobs instance"
  type        = bool
  default     = true
}



## ---------------------
## SQL Database Instance
## ---------------------

# Resource Variables

# variable "mssql_id" {
#   description = "The id to be used when generating the mssql resource name"
# }

# variable "mssql_database_version" {
#   description = "The database version to use: SQLSERVER_2019_ENTERPRISE"
# }

# variable "mssql_tier" {
#   description = "The tier for the MSSQL instance."
# }

# variable "mssql_root_password" {
#   description = "Initial root password."
# }

# variable "mssql_sa_user" {
#   description = "Service account username"
#   default     = "techrobot"
# }

# variable "mssql_availability_type" {
#   description = "The availability type (REGIONAL or ZONAL) for the MS SQL instance"
#   default     = "ZONAL"
# }

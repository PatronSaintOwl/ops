# ####

# Current Available""Datacenter Regions

# As of 28-05-2017

#

variable "region-ams2" {
  description = "Digital Ocean Amsterdam Data Center 2"
  default     = "ams2"
}

variable "region-ams3" {
  description = "Digital Ocean Amsterdam Data Center 3"
  default     = "ams3"
}

variable "region-blr1" {
  description = "Digital Ocean Bangalore Data Center 1"
  default     = "blr1"
}

variable "region-fra1" {
  description = "Digital Ocean Frankfurt Data Center 1"
  default     = "fra1"
}

variable "region-lon1" {
  description = "Digital Ocean London Data Center 1"
  default     = "lon1"
}

variable "region-nyc1" {
  description = "Digital Ocean New York Data Center 1"
  default     = "nyc1"
}

variable "region-nyc2" {
  description = "Digital Ocean New York Data Center 2"
  default     = "nyc2"
}

variable "region-nyc3" {
  description = "Digital Ocean New York Data Center 3"
  default     = "nyc3"
}

variable "region-sfo1" {
  description = "Digital Ocean San Francisco Data Center 1"
  default     = "sfo1"
}

variable "region-sgp1" {
  description = "Digital Ocean Singapore Data Center 1"
  default     = "sgp1"
}

variable "region-tor1" {
  description = "Digital Ocean Toronto Datacenter 1"
  default     = "tor1"
}

# Default Os

variable "os-ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-18-04-x64"
}

variable "os-centos" {
  description = "Default Centos"
  default     = "centos-72-x64"
}

variable "os-coreos" {
  description = "Defaut Coreos"
  default     = "coreos-899.17.0"
}

# Available sizes

variable "size-s-1vcpu-1gb" {
  default     = "s-1vcpu-1gb"
  description = "memory:1024, vcpus:1, disk:25, transfer:1.0, price_monthly:5.0, price_hourly:0.00743999984115362"
}

variable "size-512mb" {
  default     = "512mb"
  description = "memory:512, vcpus:1, disk:20, transfer:1.0, price_monthly:5.0, price_hourly:0.00743999984115362"
}

variable "size-s-1vcpu-2gb" {
  default     = "s-1vcpu-2gb"
  description = "memory:2048, vcpus:1, disk:50, transfer:2.0, price_monthly:10.0, price_hourly:0.0148799996823072"
}

variable "size-1gb" {
  default     = "1gb"
  description = "memory:1024, vcpus:1, disk:30, transfer:2.0, price_monthly:10.0, price_hourly:0.0148799996823072"
}

variable "size-s-3vcpu-1gb" {
  default     = "s-3vcpu-1gb"
  description = "memory:1024, vcpus:3, disk:60, transfer:3.0, price_monthly:15.0, price_hourly:0.0223200004547834"
}

variable "size-s-2vcpu-2gb" {
  default     = "s-2vcpu-2gb"
  description = "memory:2048, vcpus:2, disk:60, transfer:3.0, price_monthly:15.0, price_hourly:0.0223200004547834"
}

variable "size-s-1vcpu-3gb" {
  default     = "s-1vcpu-3gb"
  description = "memory:3072, vcpus:1, disk:60, transfer:3.0, price_monthly:15.0, price_hourly:0.0223200004547834"
}

variable "size-s-2vcpu-4gb" {
  default     = "s-2vcpu-4gb"
  description = "memory:4096, vcpus:2, disk:80, transfer:4.0, price_monthly:20.0, price_hourly:0.0297599993646145"
}

variable "size-2gb" {
  default     = "2gb"
  description = "memory:2048, vcpus:2, disk:40, transfer:3.0, price_monthly:20.0, price_hourly:0.0297599993646145"
}

variable "size-s-4vcpu-8gb" {
  default     = "s-4vcpu-8gb"
  description = "memory:8192, vcpus:4, disk:160, transfer:5.0, price_monthly:40.0, price_hourly:0.059519998729229"
}

variable "size-m-1vcpu-8gb" {
  default     = "m-1vcpu-8gb"
  description = "memory:8192, vcpus:1, disk:40, transfer:5.0, price_monthly:40.0, price_hourly:0.0595237985253334"
}

variable "size-c-2" {
  default     = "c-2"
  description = "memory:4096, vcpus:2, disk:25, transfer:4.0, price_monthly:40.0, price_hourly:0.0599999986588955"
}

variable "size-4gb" {
  default     = "4gb"
  description = "memory:4096, vcpus:2, disk:60, transfer:4.0, price_monthly:40.0, price_hourly:0.059519998729229"
}

variable "size-g-2vcpu-8gb" {
  default     = "g-2vcpu-8gb"
  description = "memory:8192, vcpus:2, disk:25, transfer:4.0, price_monthly:60.0, price_hourly:0.0892857015132904"
}

variable "size-gd-2vcpu-8gb" {
  default     = "gd-2vcpu-8gb"
  description = "memory:8192, vcpus:2, disk:50, transfer:4.0, price_monthly:65.0, price_hourly:0.0967262014746666"
}

variable "size-m-16gb" {
  default     = "m-16gb"
  description = "memory:16384, vcpus:2, disk:60, transfer:5.0, price_monthly:75.0, price_hourly:0.111607000231743"
}

variable "size-s-6vcpu-16gb" {
  default     = "s-6vcpu-16gb"
  description = "memory:16384, vcpus:6, disk:320, transfer:6.0, price_monthly:80.0, price_hourly:0.1190500035882"
}

variable "size-c-4" {
  default     = "c-4"
  description = "memory:8192, vcpus:4, disk:50, transfer:5.0, price_monthly:80.0, price_hourly:0.119000002741814"
}

variable "size-8gb" {
  default     = "8gb"
  description = "memory:8192, vcpus:4, disk:80, transfer:5.0, price_monthly:80.0, price_hourly:0.1190500035882"
}

variable "size-m-2vcpu-16gb" {
  default     = "m-2vcpu-16gb"
  description = "memory:16384, vcpus:2, disk:50, transfer:4.0, price_monthly:90.0, price_hourly:0.133928999304771"
}

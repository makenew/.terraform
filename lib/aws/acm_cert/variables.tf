variable "zone_id" {}
variable "domain" {}

variable "subdomains" {
  default = ["*"]
}

variable "tags" {
  default = {}
}

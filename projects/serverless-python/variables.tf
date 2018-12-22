variable "global" {
  type = "map"
}

variable "domain" {
  default = "bar"
}

variable "tags" {
  default = {
    "Application ID" = "Foo"
  }
}

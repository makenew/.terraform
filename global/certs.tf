module "cert" {
  source = "../lib/aws/acm_cert"
  domain = "foo.${var.domain}"
  zone_id = var.zone_id
}

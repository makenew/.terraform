module "certificate" {
  source = "../lib/aws/acm_certificate"
  domain = "${var.apps.foo.domain}.${var.domain}"
  zone_id = var.zone_id
  tags = merge(
    var.tags,
    var.apps.foo.tags
  )
}

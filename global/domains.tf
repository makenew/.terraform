module "certificate" {
  source = "../lib/aws/acm_certificate"
  domain = "${var.domains.foo.domain}.${var.domain}"
  zone_id = var.zone_id
  tags = merge(
    var.tags,
    var.apps[var.domain.foo.id].tags
  )
}

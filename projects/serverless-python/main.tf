module "certificate" {
  source = "../../lib/aws/acm_certificate"
  domain = "${var.domain}.${var.global.domain}"
  zone_id = var.global.zone_id
  tags = merge(
    var.global.tags,
    var.tags
  )
}

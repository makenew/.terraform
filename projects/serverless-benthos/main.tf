locals {
  domain = "serverless-benthos"
  tags = {
    "Application ID" = "serverless-benthos"
  }
}

module "certificate" {
  source = "../../lib/aws/acm_certificate"
  domain = "${local.domain}.${var.domain}"
  zone_id = var.zone_id
  tags = merge(
    var.tags,
    local.tags
  )
}

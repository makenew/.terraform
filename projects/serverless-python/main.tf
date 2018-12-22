locals {
  domain = "serverless-python"
  tags = {
    "Application ID" = "serverless-python"
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

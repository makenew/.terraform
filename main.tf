data "aws_route53_zone" "root" {
  name = "${var.rootdomain}."
}

locals {
  zone_id = data.aws_route53_zone.root.zone_id
  domain = join(".", [var.subdomain, var.rootdomain])
}

module "benthos_plugin" {
  source = "./projects/benthos-plugin"
  zone_id = local.zone_id
  domain = local.domain
  tags = var.tags
}

module "serverless_benthos" {
  source = "./projects/serverless-benthos"
  zone_id = local.zone_id
  domain = local.domain
  tags = var.tags
}

module "serverless_nodejs" {
  source = "./projects/serverless-nodejs"
  zone_id = local.zone_id
  domain = local.domain
  tags = var.tags
}

module "serverless_python" {
  source = "./projects/serverless-python"
  zone_id = local.zone_id
  domain = local.domain
  tags = var.tags
}

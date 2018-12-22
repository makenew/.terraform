module "serverless_nodejs" {
  source = "./projects/serverless-nodejs"
  zone_id = var.zone_id
  domain = var.domain
  tags = var.tags
}

module "serverless_python" {
  source = "./projects/serverless-python"
  zone_id = var.zone_id
  domain = var.domain
  tags = var.tags
}

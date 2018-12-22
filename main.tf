module "serverless_python" {
  source = "./projects/serverless-python"
  global = local.context
  zone_id = var.zone_id
  domain = var.domain
  tags = var.tags
}

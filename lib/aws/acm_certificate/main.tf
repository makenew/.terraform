resource "aws_acm_certificate" "main" {
  domain_name = var.domain
  subject_alternative_names = formatlist("%s.${var.domain}", var.subdomains)
  validation_method = "DNS"
  tags = var.tags
}

resource "aws_route53_record" "main" {
  allow_overwrite = true
  count = length(aws_acm_certificate.main.domain_validation_options)
  name = aws_acm_certificate.main.domain_validation_options.*.resource_record_name[count.index]
  type = aws_acm_certificate.main.domain_validation_options.*.resource_record_type[count.index]
  zone_id = var.zone_id
  records = [aws_acm_certificate.main.domain_validation_options.*.resource_record_value[count.index]]
  ttl = 3600
}

resource "aws_acm_certificate_validation" "main" {
  certificate_arn = aws_acm_certificate.main.arn
  validation_record_fqdns = aws_route53_record.main.*.fqdn
}

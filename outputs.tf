output "arn" {
  description = "The Amazon Resource Name (ARN) of the ElasticSearch domain"
  value       = try(aws_elasticsearch_domain.this[0].arn, null)
}

output "domain_id" {
  description = "Unique identifier for the domain"
  value       = try(aws_elasticsearch_domain.this[0].domain_id, null)
}

output "domain_name" {
  description = "Name of the Elasticsearch domain"
  value       = try(aws_elasticsearch_domain.this[0].domain_name, null)
}

output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = try(aws_elasticsearch_domain.this[0].endpoint, null)
}

output "kibana_endpoint" {
  description = "Domain-specific endpoint for kibana without https scheme"
  value       = try(aws_elasticsearch_domain.this[0].kibana_endpoint, null)
}

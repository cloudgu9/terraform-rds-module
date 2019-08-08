output "instance_id" {
  value       = "${join("", aws_db_instance.postgresql.*.id)}"
  description = "ID of the instance"
}

output "instance_address" {
  value       = "${join("", aws_db_instance.postgresql.*.address)}"
  description = "Address of the instance"
}

output "instance_endpoint" {
  value       = "${join("", aws_db_instance.postgresql.*.endpoint)}"
  description = "DNS Endpoint of the instance"
}

output "instance_arn" {
  description = "The ARN of the RDS instance"
  value       = "${join("", aws_db_instance.postgresql.*.arn)}"
}

output "instance_status" {
  description = "The RDS instance status"
  value       = "${join("", aws_db_instance.postgresql.*.status)}"
}

output "instance_maintenance_window" {
  description = "The RDS instance maintenance window time"
  value       = "${join("", aws_db_instance.postgresql.*.maintenance_window)}"
}

output "instance_backup" {
  description = "The RDS instance backup window time"
  value       = "${join("", aws_db_instance.postgresql.*.backup_window)}"
}

output "instance_rentention" {
  description = "The RDS instance retention period"
  value       = "${join("", aws_db_instance.postgresql.*.backup_retention_period)}"
}

output "instance_port" {
  description = "The database port"
  value       = "${join("", aws_db_instance.postgresql.*.port)}"
}

output "parameter_group_id" {
  value       = "${join("", aws_db_parameter_group.default.*.id)}"
  description = "ID of the Parameter Group"
}

output "option_group_id" {
  value       = "${join("", aws_db_option_group.default.*.id)}"
  description = "ID of the Option Group"
  
}

output "tags" {
  value        = "${module.mandatorytags.tags}"
  description = "List of tags"
}
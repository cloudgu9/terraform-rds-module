variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = ""
}

variable "profile" {
  description = "Set the environment profile of the AWS account you are using to deploy resources end"
  type        = "string"
  default     = ""
}

variable "role" {
  description = ""
  type        = "string"
  default     = ""
}

variable "aws_account" {
  type        = "string"
  description = "AWS account number"
  default     = ""
}

variable "vpc_id" {
  type        = "string"
  description = "VPC Id to associate with RDS Postgresql."
  default     = ""
}

variable "identifier" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type = "string"
  default = ""
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = "string"
  default     = ""
}

variable "storage_type" {
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD). The default is 'io1' if iops is specified, 'standard' if not. Note that this behaviour is different from the AWS web console, where the default is 'gp2'."
  type        = "string"
  default     = ""
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  default     = "true"
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN. If storage_encrypted is set to true and kms_key_id is not specified the default KMS key created in your account will be used"
  type        = "string"
  default     = ""
}

variable "replicate_source_db" {
  description = "Specifies that this resource is a Replicate database, and to use this value as the source database. This correlates to the identifier of another Amazon RDS Database to replicate."
  type        = "string"
  default     = ""
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this database from a snapshot. This correlates to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05."
  type        = "string"
  default     = ""
}

variable "license_model" {
  type        = "string"
  default     = ""
}

variable "iam_database_authentication_enabled" {
  description = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
  default     = false
}

variable "engine" {
  description = "The database engine to use"
  type        = "string"
  default      = ""
}

variable "engine_version" {
  description = "The engine version to use"
  type        = "string"
  default     = ""
}

/*variable "final_snapshot_identifier" {
  description = "The name of your final DB snapshot when this DB instance is deleted."
  type        = "string"
  default     = ""
}*/

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = "string"
  default     = ""
}

variable "name" {
  description = "The DB name to create. If omitted, no database is created initially"
  type        = "string"
  default = ""
}

variable "username" {
  description = "Username for the master DB user"
  type        = "string"
  default = ""
}

variable "password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  type        = "string"
  default = ""
}

variable "port" {
  description = "The port on which the DB accepts connections"
  type        = "string"
  default     = ""
}

variable "vpc_security_group_ids" {
  description = "list of VPC security groups to associate"
  type        = "list"
  default     = []
}

variable "db_subnet_group_name" {
  description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC"
  type        = "string"
  default     = "default-vpc-066c143f7d0aa0cc4"
}

variable "parameter_group_description" {
  description = "Description of the DB parameter group to create"
  type        = "string"
  default     = "Default parameter group for postgres10"
}

variable "subnet_group_description" {
  description = "Description of the DB parameter group to create"
  type        = "string"
  default     = "Created from the RDS Management Console"
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate or create"
  type        = "string"
  default     = "default.postgres10"
}

variable "option_group_name" {
  description = "Name of the DB option group to associate. Setting this automatically disables option_group creation"
  type        = "string"
  default     = "default:postgres-10"
}

variable "availability_zone" {
  description = "The Availability Zone of the RDS instance"
  type        = "string"
  default     = ""
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "iops" {
  description = "The amount of provisioned IOPS. Setting this implies a storage_type of 'io1'"
  default     = 0
}

variable "publicly_accessible" {
  description = "bool to control if instance is publicly accessible"
  default     = false
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  default     = 30
}

variable "monitoring_role_arn" {
  description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. Must be specified if monitoring_interval is non-zero."
  type        = "string"
  default     = ""
}

variable "monitoring_role_name" {
  description = "Name of the IAM role which will be created when create_monitoring_role is enabled."
  type        = "string"
  default     = ""
}

variable "allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible"
  default     = true
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = true
}

variable "maintenance_window" {
  description = "The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00'"
  type        = "string"
  default     = ""
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted, using the value from final_snapshot_identifier"
  default     = true
}

variable "copy_tags_to_snapshot" {
  description = "On delete, copy all Instance tags to the final snapshot (if final_snapshot_identifier is specified)"
  default     = false
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = 0
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  type        = "string"
  default     = ""
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = "map"
  default     = {}
}

# DB subnet group
variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = "list"
  default     = ["subnet-0b9f97afb4c6bd32b" ,"subnet-0bdc00b854e54cad8"]
}

# DB parameter group
variable "family" {
  description = "The family of the DB parameter group"
  type        = "string"
  default     = "postgres10"
}

variable "parameters" {
  description = "A list of DB parameters (map) to apply"
  type        = "list"
  default     = []
}

# DB option group
variable "option_group_description" {
  description = "The description of the option group"
  type        = "string"
  default     = "Default option group for postgres 10"
}

variable "major_engine_version" {
  description = "Specifies the major version of the engine that this option group should be associated with"
  type        = "string"
  default     = "10"
}

variable "options" {
  description = "A list of Options to apply."
  default     = []
}

variable "create_db_subnet_group" {
  description = "Whether to create a database subnet group"
  default     = "true"
}

variable "create_db_parameter_group" {
  description = "Whether to create a database parameter group"
  default     = "true"
}

variable "create_db_option_group" {
  description = "Whether to create a database option group"
  default     = "true"
}

variable "create_db_instance" {
  description = "Whether to create a database instance"
  default     = "true"
}


variable "timezone" {
  description = "(Optional) Time zone of the DB instance. timezone is currently only supported by Microsoft SQL Server. The timezone can only be set on creation. See MSSQL User Guide for more information."
  type        = "string"
  default     = ""
}

variable "character_set_name" {
  description ="(Optional) The character set name to use for DB encoding in Oracle instances. This can't be changed. See Oracle Character Sets Supported in Amazon RDS for more information"
  type        = "string"
  default     = ""
}

variable "enabled_cloudwatch_logs_exports" {
  description = "list of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine): alert, audit, error, general, listener, slowquery, trace, postgresql (PostgreSQL), upgrade (PostgreSQL)."
  type        = "list"
  default     = []
}

variable "timeouts" {
  description = "(Optional) Updated Terraform resource management timeouts. Applies to `aws_db_instance` in particular to permit resource management times"
  type        = "map"
  default = {
    create = "40m"
    update = "80m"
    delete = "40m"
  }
}

variable "deletion_protection" {
  description = "The database can't be deleted when this value is set to true."
  default     = false
}

variable "use_parameter_group_name_prefix" {
  description = "Whether to use the parameter group name prefix or not"
  default     = true
}

variable "environment" {
  type        = "string"
  description = "DBx,SIT,PERF,PRODX,UAT,UTILx"
  default     = "cloud"

  /*SIT (Multiple environments are possible, ie SIT1, SIT2, etc)
    UAT (Multiple environments are possible, ie UAT1, UAT2, etc)
    PERF
    PRODX (ie PRODB/PROD1 - Prod Blue or PRODG/PROD2 - Prod Green, etc)
    DR*/
}

variable "company" {
  type        = "string"
  description = "Based upon company that owns resource-ANTM–Anthem"
  default     = "anthem"
}

variable "costcenter" {
  type    = "string"
  default = "000000"
}

variable "owner-department" {
  type    = "string"
  default = "anthem"
}

variable "it-department" {
  type    = "string"
  default = "anthem"
}

variable "barometer-it-num" {
  type    = "string"
  default = "000"
}

variable "resource-type" {
  type        = "string"
  description = "Based upon the type of resource."
  default     = "postgresql"

  /*SVR – server resource
ELB – load balancer resource
CON – container resource
GLD – golden image resource
GRP – group resource
IAM – identity access management resource
POL – policy resource
VOL – storage resource
XXX – other resource typesSVR, ELB, CON, GLD, GRP, IAM, POL, VOL, XXX"*/
}

variable "layer" {
  type        = "string"
  description = "WEBx, MWx, DBx, UTILx"
  default     = "cloud"

  /*WEBx
  MWx (ie middleware such as MW1 – MQ caching, MW2 – Liberty/Java, etc)
  DBx
  UTILx (ie system management, monitoring and security tools, etc)*/
}

variable "compliance" {
  type        = "string"
  description = "PHI, PCI, PII, SOX, None"
  default     = "none"
}

variable "application" {
  type        = "string"
  description = "Based upon application nomenclature in server naming convention policy.Use up to six (6) characters to name your application."
  default     = "aws"
}

variable "aws_region" {
  description = "Choose AWS region to deploy RDS resources"
  type    = "string"
  default = ""
}

variable "description" {
  type    = "string"
  default = "demo"
}
resource "aws_db_instance" "postgresql" {

  identifier                          = "${var.identifier}"
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"
  storage_type                        = "${var.storage_type}"
  storage_encrypted                   = "${var.storage_encrypted}"
  kms_key_id                          = "${var.kms_key_id}"
  license_model                       = "${var.license_model}"

  name                                = "${var.name}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  port                                = "${var.port}"
  iam_database_authentication_enabled = "${var.iam_database_authentication_enabled}"

  replicate_source_db                 = "${var.replicate_source_db}"
  snapshot_identifier                 = "${var.snapshot_identifier}"

  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  option_group_name                   = "${var.option_group_name}"
  parameter_group_name                = "${var.parameter_group_name}"
  db_subnet_group_name                = "${var.db_subnet_group_name}"
  availability_zone                   = "${var.availability_zone}"
  multi_az                            = "${var.multi_az}"
  iops                                = "${var.iops}"
  publicly_accessible                 = "${var.publicly_accessible}"

  allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
  auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"
  apply_immediately                   = "${var.apply_immediately}"
  maintenance_window                  = "${var.maintenance_window}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot               = "${var.copy_tags_to_snapshot}"
  backup_retention_period             = "${var.backup_retention_period}"
  backup_window                       = "${var.backup_window}"
  timezone                            = "${var.timezone}"
  character_set_name                  = "${var.character_set_name}"
  enabled_cloudwatch_logs_exports     = "${var.enabled_cloudwatch_logs_exports}"

  deletion_protection                 = "${var.deletion_protection}"

  tags                                = "${merge(var.tags,module.mandatorytags.tags)}"
}

module "mandatorytags" {
  source                              = "git::https:/bitbucket.anthem.com/scm/acsc/terraform-aws-mandatory-tags.git"
    tags = {
    }    
    environment                        = "${var.environment}" 
    company                            = "${var.company}"
    costcenter                         = "${var.costcenter}"
    owner-department                   = "${var.owner-department}"
    it-department                      = "${var.it-department}"
    barometer-it-num                   = "${var.barometer-it-num}"
    application                        = "${var.application}"
    resource-type                      = "${var.resource-type}"
    layer                              = "${var.layer}"    
    compliance                         = "${var.compliance}"
 }
 
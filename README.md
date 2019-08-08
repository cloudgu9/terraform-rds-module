#############################
# Anthem AWS PostgreSQL Module 

This module creates RDS PostgreSQL Database

## Usage

To run this example you need to execute:

```bash
#Initialize Terraform
terraform init

#Terraform Dry-Run
terraform plan

#Create the resources
terraform apply

#Destroy the resources saved in the tfstate
terraform destroy
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allocated\_storage | The allocated storage in gigabytes | string | `""` | yes |
| allow\_major\_version\_upgrade | Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible | string | `""` | yes |
| application | Based upon application nomenclature in server naming convention policy.Use up to six \(6\) characters to name your application. | string | `""` | yes |
| apply\_immediately | Specifies whether any database modifications are applied immediately, or during the next maintenance window | string | `""` | yes |
| auto\_minor\_version\_upgrade | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window | string | `""` | yes |
| availability\_zone | The Availability Zone of the RDS instance | string | `""` | yes |
| aws\_account | AWS account number | string | `""` | yes |
| aws\_region | Choose AWS region to deploy RDS resources | string | `""` | yes |
| backup\_retention\_period | The days to retain backups for | string | `""` | yes |
| backup\_window | The daily time range \(in UTC\) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance\_window | string | `""` | yes |
| barometer-it-num |  | string | `""` | yes |
| character\_set\_name | \(Optional\) The character set name to use for DB encoding in Oracle instances. This can't be changed. See Oracle Character Sets Supported in Amazon RDS for more information | string | `""` | yes |
| company | Based upon company that owns resource-ANTM–Anthem | string | `""` | yes |
| compliance | PHI, PCI, PII, SOX, None | string | `""` | yes |
| copy\_tags\_to\_snapshot | On delete, copy all Instance tags to the final snapshot \(if final\_snapshot\_identifier is specified\) | string | `""` | yes |
| costcenter |  | string | `""` | yes |
| create\_db\_instance | Whether to create a database instance | string | `""` | yes |
| create\_db\_option\_group | Whether to create a database option group | string | `""` | yes |
| create\_db\_parameter\_group | Whether to create a database parameter group | string | `""` | yes |
| create\_db\_subnet\_group | Whether to create a database subnet group | string | `""` | yes |
| db\_subnet\_group\_name | Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC | string | `""` | yes |
| deletion\_protection | The database can't be deleted when this value is set to true. | string | `""` | yes |
| description |  | string | `""` | yes |
| enabled | Set to false to prevent the module from creating any resources | string | `""` | yes |
| enabled\_cloudwatch\_logs\_exports | list of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values \(depending on engine\): alert, audit, error, general, listener, slowquery, trace, postgresql \(PostgreSQL\), upgrade \(PostgreSQL\). | list | `<list>` | yes |
| engine | The database engine to use | string | `""` | yes |
| engine\_version | The engine version to use | string | `""` | yes |
| environment | DBx,SIT,PERF,PRODX,UAT,UTILx | string | `""` | yes |
| family | The family of the DB parameter group | string | `""` | yes |
| final\_snapshot\_identifier | The name of your final DB snapshot when this DB instance is deleted. | string | `""` | yes |
| iam\_database\_authentication\_enabled | Specifies whether or mappings of AWS Identity and Access Management \(IAM\) accounts to database accounts is enabled | string | `""` | yes |
| identifier | The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier | string | `""` | yes |
| instance\_class | The instance type of the RDS instance | string | `""` | yes |
| iops | The amount of provisioned IOPS. Setting this implies a storage\_type of 'io1' | string | `"0"` | yes |
| it-department |  | string | `""` | yes |
| kms\_key\_id | The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN. If storage\_encrypted is set to true and kms\_key\_id is not specified the default KMS key created in your account will be used | string | `""` | yes |
| layer | WEBx, MWx, DBx, UTILx | string | `""` | yes |
| license\_model |  | string | `""` | yes |
| maintenance\_window | The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00' | string | `""` | yes |
| major\_engine\_version | Specifies the major version of the engine that this option group should be associated with | string | `""` | yes |
| monitoring\_interval | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60. | string | `""` | yes |
| monitoring\_role\_arn | The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. Must be specified if monitoring\_interval is non-zero. | string | `""` | yes |
| monitoring\_role\_name | Name of the IAM role which will be created when create\_monitoring\_role is enabled. | string | `""` | yes |
| multi\_az | Specifies if the RDS instance is multi-AZ | string | `""` | yes |
| name | The DB name to create. If omitted, no database is created initially | string | `""` | yes |
| option\_group\_description | The description of the option group | string | `""` | yes |
| option\_group\_name | Name of the DB option group to associate. Setting this automatically disables option\_group creation | string | `""` | yes |
| options | A list of Options to apply. | list | `<list>` | yes |
| owner-department |  | string | `""` | yes |
| parameter\_group\_description | Description of the DB parameter group to create | string | `""` | yes |
| parameter\_group\_name | Name of the DB parameter group to associate or create | string | `""` | yes |
| parameters | A list of DB parameters \(map\) to apply | list | `<list>` | yes |
| password | Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file | string | `""` | yes |
| port | The port on which the DB accepts connections | string | `""` | yes |
| profile | Set the environment profile of the AWS account you are using to deploy resources end | string | `""` | yes |
| publicly\_accessible | bool to control if instance is publicly accessible | string | `""` | yes |
| replicate\_source\_db | Specifies that this resource is a Replicate database, and to use this value as the source database. This correlates to the identifier of another Amazon RDS Database to replicate. | string | `""` | yes |
| resource-type | Based upon the type of resource. | string | `""` | yes |
| role |  | string | `""` | yes |
| skip\_final\_snapshot | Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted, using the value from final\_snapshot\_identifier | string | `""` | yes |
| snapshot\_identifier | Specifies whether or not to create this database from a snapshot. This correlates to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05. | string | `""` | yes |
| storage\_encrypted | Specifies whether the DB instance is encrypted | string | `""` | yes |
| storage\_type | One of 'standard' \(magnetic\), 'gp2' \(general purpose SSD\), or 'io1' \(provisioned IOPS SSD\). The default is 'io1' if iops is specified, 'standard' if not. Note that this behaviour is different from the AWS web console, where the default is 'gp2'. | string | `""` | yes |
| subnet\_group\_description | Description of the DB parameter group to create | string | `""` | yes |
| subnet\_ids | A list of VPC subnet IDs | list | `<list>` | yes |
| tags | A mapping of tags to assign to all resources | map | `<map>` | yes |
| timeouts | \(Optional\) Updated Terraform resource management timeouts. Applies to `aws\_db\_instance` in particular to permit resource management times | map | `<map>` | yes |
| timezone | \(Optional\) Time zone of the DB instance. timezone is currently only supported by Microsoft SQL Server. The timezone can only be set on creation. See PostgreSQL User Guide for more information. | string | `""` | yes |
| use\_parameter\_group\_name\_prefix | Whether to use the parameter group name prefix or not | string | `""` | yes |
| username | Username for the master DB user | string | `""` | yes |
| vpc\_id | VPC Id to associate with RDS Postgresql. | string | `""` | yes |
| vpc\_security\_group\_ids | list of VPC security groups to associate | list | `<list>` | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_address | Address of the instance |
| instance\_arn | The ARN of the RDS instance |
| instance\_backup | The RDS instance backup window time |
| instance\_endpoint | DNS Endpoint of the instance |
| instance\_id | ID of the instance |
| instance\_maintenance\_window | The RDS instance maintenance window time |
| instance\_port | The database port |
| instance\_rentention | The RDS instance retention period |
| instance\_status | The RDS instance status |
| option\_group\_id | ID of the Option Group |
| parameter\_group\_id | ID of the Parameter Group |
| tags | List of tags |
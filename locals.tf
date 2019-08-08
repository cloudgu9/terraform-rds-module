locals {
  Name = "${var.application}-${var.environment}-kinesis-datastreams"
  tags = "${merge(var.tags,map("Name",local.Name))}"
}
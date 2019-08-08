provider "aws" {
  region   = "${var.aws_region}"
  profile  = "${var.profile}"
  version = "2.20"
  insecure = true

  assume_role{
    role_arn = "arn:aws:iam::${var.aws_account}:role/ANTM-Execution-Role"
  }
}
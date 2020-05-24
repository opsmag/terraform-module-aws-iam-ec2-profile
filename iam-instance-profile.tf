resource "aws_iam_instance_profile" "this" {
  name = "${var.infrastructure}-ec2-profile"
  role = aws_iam_role.this.*.id[0]
}
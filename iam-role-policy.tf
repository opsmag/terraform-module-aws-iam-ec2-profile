resource "aws_iam_role_policy" "this" {
  name = "${var.project_name}-ec2-profile"
  role = aws_iam_role.this.*.id[0]

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

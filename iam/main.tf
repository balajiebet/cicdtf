resource "aws_iam_policy" "custom_policy" {
  name        = "custom-terraform-policy"
  description = "Custom policy for Terraform-managed resources"
  policy      = data.aws_iam_policy_document.custom_policy.json
}

data "aws_iam_policy_document" "custom_policy" {
  statement {
    actions = [
      "ec2:Describe*",
      "ec2:CreateVpc",
      "ec2:CreateSubnet",
      "ec2:CreateSecurityGroup",
      "ec2:RunInstances",
      "ec2:TerminateInstances",
      "s3:*",
      "dynamodb:*"
    ]
    resources = ["*"]
  }
}

output "policy_arn" {
  description = "The ARN of the custom IAM policy"
  value       = aws_iam_policy.custom_policy.arn
}
resource "aws_eks_access_policy_association" "eks_policy_fastfood_8soat35" {
  cluster_name  = aws_eks_cluster.eks_cluster_fastfood_8soat35.name
  policy_arn    = var.policyArn
  principal_arn = "arn:aws:iam::${var.accountIdVoclabs}:role/voclabs"

  access_scope {
    type = "cluster"
  }
}
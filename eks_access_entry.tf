resource "aws_eks_access_entry" "eks_access_entry_fastfood_8soat35" {
  cluster_name      = aws_eks_cluster.eks_cluster_fastfood_8soat35.name
  principal_arn     = "arn:aws:iam::${var.accountIdVoclabs}:role/voclabs"
  kubernetes_groups = ["8soat35"]
  type              = "STANDARD"
}
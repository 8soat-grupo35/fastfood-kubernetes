resource "aws_eks_node_group" "eks_nodeg_fastfood_8soat35" {
  cluster_name    = aws_eks_cluster.eks_cluster_fastfood_8soat35.name
  node_group_name = "NG-${var.projectName}"
  node_role_arn   = data.aws_iam_role.labrole.arn
  subnet_ids      = [for id,subnet in data.aws_subnet.subnet : id]
  disk_size       = 50
  instance_types  = [var.instanceType]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}

resource "aws_eks_cluster" "eks_cluster_fastfood_8soat35" {
  name = var.projectName
  role_arn = data.aws_iam_role.labrole.arn
  vpc_config {
    subnet_ids = [for id,subnet in data.aws_subnet.subnet : id]
    security_group_ids = [aws_security_group.sg_fastfood_8soat35.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}

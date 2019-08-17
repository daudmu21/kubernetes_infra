resource "aws_eip" "us-west-1b-kubernetesda-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1b.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

resource "aws_eip" "us-west-1c-kubernetesda-com" {
  vpc = true

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1c.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}
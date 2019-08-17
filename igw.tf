resource "aws_internet_gateway" "kubernetesda-com" {
  vpc_id = "${aws_vpc.kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}
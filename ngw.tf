resource "aws_nat_gateway" "us-west-1b-kubernetesda-com" {
  allocation_id = "${aws_eip.us-west-1b-kubernetesda-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-1b-kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1b.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-1c-kubernetesda-com" {
  allocation_id = "${aws_eip.us-west-1c-kubernetesda-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-1c-kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1c.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}
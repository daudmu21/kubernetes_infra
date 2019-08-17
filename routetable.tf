resource "aws_route_table" "kubernetesda-com" {
  vpc_id = "${aws_vpc.kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/kops/role"                = "public"
  }
}

resource "aws_route_table" "private-us-west-1b-kubernetesda-com" {
  vpc_id = "${aws_vpc.kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "private-us-west-1b.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-west-1b"
  }
}

resource "aws_route_table" "private-us-west-1c-kubernetesda-com" {
  vpc_id = "${aws_vpc.kubernetesda-com.id}"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "private-us-west-1c.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/kops/role"                = "private-us-west-1c"
  }
}

resource "aws_route_table_association" "private-us-west-1b-kubernetesda-com" {
  subnet_id      = "${aws_subnet.us-west-1b-kubernetesda-com.id}"
  route_table_id = "${aws_route_table.private-us-west-1b-kubernetesda-com.id}"
}

resource "aws_route_table_association" "private-us-west-1c-kubernetesda-com" {
  subnet_id      = "${aws_subnet.us-west-1c-kubernetesda-com.id}"
  route_table_id = "${aws_route_table.private-us-west-1c-kubernetesda-com.id}"
}

resource "aws_route_table_association" "utility-us-west-1b-kubernetesda-com" {
  subnet_id      = "${aws_subnet.utility-us-west-1b-kubernetesda-com.id}"
  route_table_id = "${aws_route_table.kubernetesda-com.id}"
}

resource "aws_route_table_association" "utility-us-west-1c-kubernetesda-com" {
  subnet_id      = "${aws_subnet.utility-us-west-1c-kubernetesda-com.id}"
  route_table_id = "${aws_route_table.kubernetesda-com.id}"
}

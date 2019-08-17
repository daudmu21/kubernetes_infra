resource "aws_subnet" "us-west-1b-kubernetesda-com" {
  vpc_id            = "${aws_vpc.kubernetesda-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-1b"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1b.kubernetesda.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "us-west-1c-kubernetesda-com" {
  vpc_id            = "${aws_vpc.kubernetesda-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-1c"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "us-west-1c.kubernetesda.com"
    SubnetType                               = "Private"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/role/internal-elb"        = "1"
  }
}

resource "aws_subnet" "utility-us-west-1b-kubernetesda-com" {
  vpc_id            = "${aws_vpc.kubernetesda-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-1b"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "utility-us-west-1b.kubernetesda.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

resource "aws_subnet" "utility-us-west-1c-kubernetesda-com" {
  vpc_id            = "${aws_vpc.kubernetesda-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-1c"

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "utility-us-west-1c.kubernetesda.com"
    SubnetType                               = "Utility"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
    "kubernetes.io/role/elb"                 = "1"
  }
}

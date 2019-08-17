resource "aws_vpc" "kubernetesda-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesda-com" {
  domain_name         = "us-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesda-com" {
  vpc_id          = "${aws_vpc.kubernetesda-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesda-com.id}"
}
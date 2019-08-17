resource "aws_ebs_volume" "b-etcd-main-kubernetesda-com" {
  availability_zone = "us-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "b.etcd-main.kubernetesda.com"
    "k8s.io/etcd/main"                       = "b/b"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetesda-com-7d4a0fad57bb7adf46e324bd900e9fa4" {
  key_name   = "kubernetes.kubernetesda.com-7d:4a:0f:ad:57:bb:7a:df:46:e3:24:bd:90:0e:9f:a4"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesda.com-7d4a0fad57bb7adf46e324bd900e9fa4_public_key")}"
}
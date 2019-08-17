resource "aws_elb" "api-kubernetesda-com" {
  name = "api-kubernetesda-com-gn282v"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesda-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-1b-kubernetesda-com.id}", "${aws_subnet.utility-us-west-1c-kubernetesda-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "api.kubernetesda.com"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}

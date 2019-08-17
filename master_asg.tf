resource "aws_autoscaling_group" "nodes-kubernetesda-com" {
  name                 = "nodes.kubernetesda.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetesda-com.id}"
  max_size             = "${var.nodes_max_size}"
  min_size             = "${var.nodes_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.us-west-1b-kubernetesda-com.id}", "${aws_subnet.us-west-1c-kubernetesda-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesda.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetesda.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesda-com" {
  availability_zone = "us-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                        = "kubernetesda.com"
    Name                                     = "b.etcd-events.kubernetesda.com"
    "k8s.io/etcd/events"                     = "b/b"
    "k8s.io/role/master"                     = "1"
    "kubernetes.io/cluster/kubernetesda.com" = "owned"
  }
}
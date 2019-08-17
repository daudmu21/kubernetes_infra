resource "aws_autoscaling_group" "master-us-west-1b-masters-kubernetesda-com" {
  name                 = "master-us-west-1b.masters.kubernetesda.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-1b-masters-kubernetesda-com.id}"
  max_size             = "${var.master_max_size}"
  min_size             = "${var.master_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.us-west-1b-kubernetesda-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesda.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-1b.masters.kubernetesda.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

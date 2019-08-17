resource "aws_autoscaling_attachment" "master-us-west-1b-masters-kubernetesda-com" {
  elb                    = "${aws_elb.api-kubernetesda-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-1b-masters-kubernetesda-com.id}"
}

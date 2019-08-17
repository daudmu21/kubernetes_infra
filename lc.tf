resource "aws_launch_configuration" "master-us-west-1b-masters-kubernetesda-com" {
  name_prefix                 = "master-us-west-1b.masters.kubernetesda.com-"
  image_id                    = "ami-090a5d278903168cd"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesda-com-7d4a0fad57bb7adf46e324bd900e9fa4.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesda-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesda-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-1b.masters.kubernetesda.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesda-com" {
  name_prefix                 = "nodes.kubernetesda.com-"
  image_id                    = "ami-090a5d278903168cd"
  instance_type               = "${var.nodes_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesda-com-7d4a0fad57bb7adf46e324bd900e9fa4.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesda-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesda-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesda.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
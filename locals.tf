locals = {
  cluster_name                      = "kubernetesda.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-1b-masters-kubernetesda-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesda-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesda-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesda-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesda-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesda-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-1b-kubernetesda-com.id}", "${aws_subnet.us-west-1c-kubernetesda-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesda-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesda-com.name}"
  region                            = "us-west-1"
  route_table_private-us-west-1b_id = "${aws_route_table.private-us-west-1b-kubernetesda-com.id}"
  route_table_private-us-west-1c_id = "${aws_route_table.private-us-west-1c-kubernetesda-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesda-com.id}"
  subnet_us-west-1b_id              = "${aws_subnet.us-west-1b-kubernetesda-com.id}"
  subnet_us-west-1c_id              = "${aws_subnet.us-west-1c-kubernetesda-com.id}"
  subnet_utility-us-west-1b_id      = "${aws_subnet.utility-us-west-1b-kubernetesda-com.id}"
  subnet_utility-us-west-1c_id      = "${aws_subnet.utility-us-west-1c-kubernetesda-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesda-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesda-com.id}"
}

output "cluster_name" {
  value = "kubernetesda.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-1b-masters-kubernetesda-com.id}"]
}
output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesda-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesda-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesda-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesda-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesda-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-1b-kubernetesda-com.id}", "${aws_subnet.us-west-1c-kubernetesda-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesda-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesda-com.name}"
}

output "region" {
  value = "us-west-1"
}

output "route_table_private-us-west-1b_id" {
  value = "${aws_route_table.private-us-west-1b-kubernetesda-com.id}"
}

output "route_table_private-us-west-1c_id" {
  value = "${aws_route_table.private-us-west-1c-kubernetesda-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesda-com.id}"
}

output "subnet_us-west-1b_id" {
  value = "${aws_subnet.us-west-1b-kubernetesda-com.id}"
}

output "subnet_us-west-1c_id" {
  value = "${aws_subnet.us-west-1c-kubernetesda-com.id}"
}

output "subnet_utility-us-west-1b_id" {
  value = "${aws_subnet.utility-us-west-1b-kubernetesda-com.id}"
}

output "subnet_utility-us-west-1c_id" {
  value = "${aws_subnet.utility-us-west-1c-kubernetesda-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesda-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesda-com.id}"
}
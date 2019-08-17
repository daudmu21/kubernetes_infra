resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesda-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesda-com.id}"
}

resource "aws_route" "private-us-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-1b-kubernetesda-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-1b-kubernetesda-com.id}"
}

resource "aws_route" "private-us-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-1c-kubernetesda-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-1c-kubernetesda-com.id}"
}
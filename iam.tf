resource "aws_iam_instance_profile" "masters-kubernetesda-com" {
  name = "masters.kubernetesda.com"
  role = "${aws_iam_role.masters-kubernetesda-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesda-com" {
  name = "nodes.kubernetesda.com"
  role = "${aws_iam_role.nodes-kubernetesda-com.name}"
}

resource "aws_iam_role" "masters-kubernetesda-com" {
  name               = "masters.kubernetesda.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesda.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesda-com" {
  name               = "nodes.kubernetesda.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesda.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesda-com" {
  name   = "masters.kubernetesda.com"
  role   = "${aws_iam_role.masters-kubernetesda-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesda.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesda-com" {
  name   = "nodes.kubernetesda.com"
  role   = "${aws_iam_role.nodes-kubernetesda-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesda.com_policy")}"
}

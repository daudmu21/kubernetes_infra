resource "aws_route53_record" "api-kubernetesda-com" {
  name = "api.kubernetesda.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesda-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesda-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZZNL2IGVW9MN3"
}

resource "aws_route53_zone_association" "ZZNL2IGVW9MN3" {
  zone_id = "/hostedzone/ZZNL2IGVW9MN3"
  vpc_id  = "${aws_vpc.kubernetesda-com.id}"
}
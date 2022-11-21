resource helm_release external-dns {
    name       = "external-dns"
    chart      = "${path.module}/external-dns/"
    namespace = "external-dns"
    create_namespace = true
    set {
        name  = "provider"
        value = var.external_dns_provider
    }
    set {
        name  = "aws.region"
        value = var.region
    }
    set {
        name  = "aws.zoneType"
        value = var.zonetype
    }

    set {
        name  = "aws.assumeRoleArn"
        value = aws_iam_role.external_dns.arn
    }
      
}
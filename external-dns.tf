resource helm_release external-dns {
    name       = "external-dns"
    chart      = "${path.module}/external-dns/"
    namespace = "external-dns"
    create_namespace = true
    set {
        name  = "provider"
        value = var.provider
    }
    set {
        name  = "aws.region"
        value = var.region
    }
    set {
        name  = "aws.zoneType"
        value = var.zonetype
    }        
}
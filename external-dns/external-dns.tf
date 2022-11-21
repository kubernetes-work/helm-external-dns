resource helm_release external-dns {
    name       = "external-dns"
    chart      = "${path.module}/external-dns/"
    namespace = "external-dns"
    create_namespace = true
}
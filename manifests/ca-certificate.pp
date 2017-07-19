define ssl::ca-certificate(
  $ensure  = 'present',
  $source  = '',
  $content = ''
) {
  warning("Ssl::Ca-certificate[${name}]: ca-certificate is deprecated. Please use ca_certificate")
  ssl::ca_certificate { $name:
    ensure  => $ensure,
    source  => $source,
    content => $content,
  }
}

class ssl {
  package { ['ca-certificates', 'ssl-cert']:
    ensure => present,
  }

  file { '/etc/ssl':
    ensure => directory,
  }

  exec { 'update-ca-certificates':
    command     => "/usr/sbin/update-ca-certificates",
    refreshonly => true,
  }
}

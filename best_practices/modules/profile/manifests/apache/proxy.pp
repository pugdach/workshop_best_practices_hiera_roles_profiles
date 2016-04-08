class profile::apache::proxy {
  class { profile::apache:
    logrotate => 'proxy',
  }
  apache::mod{ 'proxy': }
}

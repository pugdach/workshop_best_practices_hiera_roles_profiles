class inheritance {
    package { 'ntp':
        ensure => present,
    }
    file { '/etc/ntp.conf':
        ensure  => file,
        require => Package['ntp'],
    }
    service { 'ntp':
        ensure    => running,
        enable    => true,
        subscribe => File['/etc/ntp.conf'],
    }
}

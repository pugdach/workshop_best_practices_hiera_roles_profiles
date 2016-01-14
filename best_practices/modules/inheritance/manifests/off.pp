class inheritance::off inherits inheritance {
    Package['ntp']{
        ensure => absent,
    }
    File['/etc/ntp.conf']{
        ensure  => absent,
        require => undef,
        before  => Package['ntp'],
    }
    Service['ntp']{
        ensure    => stopped,
        enable    => undef,
        subscribe => undef,
        before    => File['/etc/ntp.conf'],
    }
}

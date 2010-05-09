class dbus::base {
    package{dbus:
        ensure => present,
    }

    service{messagebus:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package[dbus],
    }
}

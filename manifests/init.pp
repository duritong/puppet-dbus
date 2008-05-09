#######################################
# dbus module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "dbus": }
class dbus {
    include dbus::base
}

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

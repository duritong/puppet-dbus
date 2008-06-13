#
# dbus module
#
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

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

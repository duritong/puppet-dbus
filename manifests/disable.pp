#######################################
# dbus module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# disable dbus
class dbus::disable inherits dbus::base {
  Service['messagebus']{
    ensure => stopped,
    enable => false,
  }
}

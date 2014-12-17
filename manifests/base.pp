# manage dbus base
class dbus::base {
  package{'dbus':
    ensure => present,
  }

  service{'messagebus':
    ensure    => running,
    enable    => true,
    hasstatus => true,
    require   => Package[dbus],
  }
  if ($::operatingsystem in ['RedHat','CentOS']) and ($::operatingsystemmajrelease > 6) {
    Service['messagebus']{
      name => 'dbus'
    }
  }
}

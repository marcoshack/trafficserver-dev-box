#
# Based on https://cwiki.apache.org/TS/ubuntu.html
#

$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

package { ['g++', 'make', 'libssl-dev', 'tcl-dev', 'libexpat1-dev', 'libpcre3-dev']:
  ensure => installed
}

package { ['libcap-dev', 'libcap2']:
  ensure => installed
}

# WCCP requirements
package { ['bison', 'flex']:
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

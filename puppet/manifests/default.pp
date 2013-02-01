$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# Tools
package { ['g++', 'make', 'autoconf', 'automake', 'pkg-config', 'libtool']:
  ensure => installed
}

# Required libraries
package { ['libssl-dev', 'tcl-dev', 'libexpat1-dev', 'libpcre3-dev', 'expat']:
  ensure => installed
}

# Optional libraries
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

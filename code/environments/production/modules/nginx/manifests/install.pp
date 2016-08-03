#install class to manage the installation of nginx
class nginx::install {
  
  case $::kernel {
    'linux': {
      package { 'nginx':
        ensure => installed,
      }
    }
    default: {
      fail("Operating System: ${::kernel} is unsupported by this nginx module.")
    }
  }
}

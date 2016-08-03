#Class for nginx parameters
class nginx::params{
  case $::operatingsystem {
    'Debian': {
      $nginx_repo = 'apt-get'
    }
    default: {
      $nginx_repo = 'yum'
    }
  }
}

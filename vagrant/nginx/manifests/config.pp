#Class for nginx configuration
class nginx::config{
  file {'/etc/nginx.conf':
    ensure  => file,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('nginx/nginx.conf.erb'),
    notify  => Service['nginx'],
  }
}

# Increase the size of traffic limit an Nginx server

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
  before  => Exec['nginx-restart']
}

exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}

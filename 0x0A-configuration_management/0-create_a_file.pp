# code to create a file 
file { '/tmp/school':
  ensure  => file,
  group   => 'www-data',	
  mode    => '0744',
  content => 'I love Puppet',
  owner   => 'www-data',
}

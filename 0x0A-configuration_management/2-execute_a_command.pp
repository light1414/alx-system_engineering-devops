# This code uses Puppet, create a manifest that stops a process named killmenow

exec { 'killmenow':
  command => 'pkill -f "bash.*killmenow"',
  onlyif  => 'pgrep -f "bash.*killmenow"',
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
}

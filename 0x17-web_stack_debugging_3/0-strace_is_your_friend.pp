# Corrects bad `phpp` extensions files in the WordPress `.

exec { 'fix-wordpress errors':
  command => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

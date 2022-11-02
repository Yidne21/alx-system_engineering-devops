# This script fixes badd 'phhp' extension to 'php' in wordpress file 'wp-settings.php'
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

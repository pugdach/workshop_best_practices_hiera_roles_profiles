class profile::apache (
  $logrotate = 'standard'
){
  case $lorotate {
    'standard': {
      $logpattern = 'daily',
    }
    'proxy': {
      $logpattern = 'weekly'
    }
  }
  class { 'apache':
    # ....
  }
}

function data_in_modules2::data() {
  $common_data = {
    'ntp::config'    => "/etc/ntp.conf",
    'ntp::keys_file' => "/etc/ntp.keys",
  }
  case $::osfamily {
    'AIX': {
      $os_data = {
        'ntp::config' => "/etc/ntpd.conf",
      }
    }
    'Debian': {
      $os_data = {
        'ntp::keys_file' => "/etc/ntp/keys",
      }
    }
  }
  $common_data + $os_data
}

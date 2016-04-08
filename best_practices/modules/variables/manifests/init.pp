class variables {
  include more_variables
  $var = 'from variables'
  notify { "More var: ${::more_variables::var}": }
  variables::type_define { 'foo': }
  variables::type_define { 'bar':
    var => $var,
  }
}

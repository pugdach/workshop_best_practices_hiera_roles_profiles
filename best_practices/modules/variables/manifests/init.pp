class variables {
  include more_variables
  $var = 'from variables'
  notify { "More var: ${var}": }
  variables::type_define { 'foo': }
  variables::type_define { 'bar':
    var => $var,
  }
}

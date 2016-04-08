define variables::type_define (
  $var = undef,
){
  file { "/tmp/${title}":
    ensure  => file,
    content => template('variables/file.erb'),
  }
}

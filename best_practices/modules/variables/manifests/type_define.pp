define variables::type_define (
){
  file { "/tmp/${title}":
    ensure  => file,
    content => template('variables/file.erb'),
  }
}

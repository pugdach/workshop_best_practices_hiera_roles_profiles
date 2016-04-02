class data_validation (
  $array = [],
  $hash = {},
  $string = '',
  $bool = undef,
){
  $array.each |$value| {
    notify { "Array has a value of: ${value}": }
  }
  $hash.each |$key, $val| {
    notify { "Has has a key of: ${key} and a value of ${val}": }
  }
  if $bool {
    notify { "Bool is true and string is ${string}": }
  }
}

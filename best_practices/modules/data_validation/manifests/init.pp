class data_validation (
  Array             $array = [],
  Hash              $hash = {},
  String            $string = '',
  Optional[Boolean] $bool = undef,
){
  $key = hiera('key')
  case $key {
    Array: { 
      #... 
    }
    String: {
      #..
    }
    default: { 
      fail()
    }
  }
  if assert_type($key, String) {
    # ...
  }
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


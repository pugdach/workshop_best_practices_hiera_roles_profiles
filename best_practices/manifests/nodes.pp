node 'foo' {
    include role::app_front
}

class bar {
    notify { 'bar class in import': }
}

node 'foo' {
    include bar
}

class bar {
    notify { 'bar class in import': }
}

node basenode {
    $server = true
    $content = 'foobar'
    include foo
    include bar
}

node 'mynode' inherits 'basenode' {
    $server = false
}

class profile::base {

  #the base profile should include component modules that will be on all nodes
  $password = lookup('profile::nginx::vhosts::password'),

  notice {"password = ${password}":}
  notify { 'This is profile::base':  }

}

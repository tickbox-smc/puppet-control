class profile::base (

  $password = lookup('profile::nginx::vhosts::password'),

){

  notice { "password = ${password}": }
  notify { 'This is profile::base':  }

}

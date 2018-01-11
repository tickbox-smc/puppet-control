class profile::base (

  $password = 'poop', #lookup('profile::nginx::vhosts::password'),

){

  notify { "password = ${password}": }
  notify { 'This is profile::base':  }

}

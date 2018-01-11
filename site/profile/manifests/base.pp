class profile::base (

  $password = 'poop', #lookup('profile::nginx::vhosts::password'),

){

  notice { "password = ${password}": }
  notify { 'This is profile::base':  }

}

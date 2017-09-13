class profile::accounts(
  $host_keys,
  Hash $groups_hash = {
    'admin'       => { gid => '3000' },
    'sudo'        => { gid => '3001' },
    'sudonopw'    => { gid => '3002' },
  },

  Hash $users_hash ={
    'xo' => {
      'shell'   => '/bin/bash',
      'comment'   => 'xfero user',
      'groups'  => [ admin, sudonopw ],
      'uid'     => '1112',
      'gid'     => '1112',
      'locked'  => false,
      'sshkeys' => $host_keys,
      'password' => '!!',
    },
    'chris' => {
      'comment' => 'Chris Falck',
      'uid'     => '1109',
      'gid'     => '1109',
    },
  },

) {
  include ::accounts
  create_resources(group, $groups_hash)
  create_resources(::accounts::user, $users_hash)
}

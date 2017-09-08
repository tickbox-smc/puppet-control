class profile::selinux {
  class { '::selinux':
    mode => 'enforcing',
  }
}

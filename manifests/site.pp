## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# Default Exec binary paths
Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node 'puppet' {
  notify { 'This matches the puppet master!!!':  }
}

#node 'agent1' {
#  notify { 'This matches the puppet agent1!!!': }

  # Example code to be added to the site.pp
#  wordpress_app::simple { 'all_in_one':
#    nodes => {
#      Node['agent1.tickbox'] => [
#        Wordpress_app::Database['all_in_one'],
#        Wordpress_app::Web['all_in_one'],
#      ]
#    }
#  }
#}

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
  notify { 'This is the default node classifier':  }
}

#site {
  #Instantiate ao_website and give it a name
#  ao_website { 'ao_website':
    #Our application has two input parameters: the number of web servers and load balancers in our application
#    number_webs => 2,
#    number_lbs => 1,
#    nodes => {
      #Bind your puppet nodes to the correct component
#      Node['agent3.tickbox'] => [Ao_website::Web['ao_website-web-0']],
#      Node['agent4.tickbox'] => [Ao_website::Web['ao_website-web-1']],
#      Node['agent1.tickbox'] => [Ao_website::Lb['ao_website-lb-0']],
#      Node['agent2.tickbox'] => [Ao_website::Db['ao_website']],
#    }
#  }
#}

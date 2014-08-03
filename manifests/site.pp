package { 'shorewall' :
  ensure => installed,
}

include ::openstack::role::controller 

exec { 'apt-get update': path => '/usr/bin' } package { "nginx": ensure => installed } service { "nginx": require => Package["nginx"], ensure => running, enable => true }

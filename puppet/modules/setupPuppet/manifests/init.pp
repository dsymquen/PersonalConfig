# -*- mode: ruby -*-
# vi: set ft=ruby :

class setupPuppet(

){
    Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

    exec { 'apt-get update':
           command => 'apt-get update',
    }
    
    class { 'git': }
}

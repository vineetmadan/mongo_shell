class mongo_shell::mongo34 (
$packages = ['mongodb-org-shell-3.4.*','mongodb-org-tools-3.4.*']
) {
  
  yumrepo { 'mongodb-org-3.4':
    ensure    => 'present',
    descr   => 'MongoDB Repository 3.4',
    baseurl   => 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/',
    gpgcheck  => 1,
    enabled   => 1,
    gpgkey    => 'https://www.mongodb.org/static/pgp/server-3.4.asc',
  }
  package { $packages:
    ensure  => 'installed',
    require => Yumrepo["mongodb-org-3.4"],
  }

}
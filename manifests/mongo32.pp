class mongo_shell::mongo32 (
$packages = ['mongodb-org-shell-3.2.*','mongodb-org-tools-3.2.*']
) {
  
  yumrepo { 'mongodb-org-3.2':
    ensure    => 'present',
    descr   => 'MongoDB Repository 3.2',
    baseurl   => 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/',
    gpgcheck  => 1,
    enabled   => 1,
    gpgkey    => 'https://www.mongodb.org/static/pgp/server-3.2.asc',
  }
  package { $packages:
    ensure	=> 'installed',
    require	=> Yumrepo["mongodb-org-3.2"],
  }

}
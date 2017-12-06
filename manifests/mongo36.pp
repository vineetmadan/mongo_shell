class mongo_shell::mongo36 (
$packages = ['mongodb-org-shell-3.6.*','mongodb-org-tools-3.6.*']
) {
  
  yumrepo { 'mongodb-org-3.6':
    ensure		=> 'present',
    descr		=> 'MongoDB Repository 3.6',
    baseurl		=> 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/testing/x86_64/',
    gpgcheck	=> 1,
    enabled		=> 1,
    gpgkey		=> 'https://www.mongodb.org/static/pgp/server-3.6.asc',
  }

  package { $packages:
    ensure	=> 'installed',
    require	=> Yumrepo["mongodb-org-3.6"],
  }

}

class mongo_shell::mongo36 (
$filepath	=	'/etc/yum.repos.d/mongodb-org-3.6.repo',
$packages = ['mongodb-org-shell-3.6.*','mongodb-org-tools-3.6.*']
) {
  
  exec { 'check_presence':
    command		=> "/bin/true",
    onlyif		=> "/bin/test ! -f $filepath",
  }

  file { $filepath:
    ensure	=> 'present',
    mode	  => '0644',
    owner	  => 'root',
    group	  => 'root',
    source	=> 'puppet:///modules/mongo_shell/repo36',
    require	=> Exec["check_presence"],
  }

  package { $packages:
    ensure	=> 'installed',
    require	=> File["$filepath"],
  }

}
class mongo_shell::mongo34 (
$filepath	=	'/etc/yum.repos.d/mongodb-org-3.4.repo',
$packages = ['mongodb-org-shell-3.4.*','mongodb-org-tools-3.4.*']
) {
  
  exec { 'check_presence':
    command		=> "/bin/true",
    onlyif		=> "/bin/test ! -f $filepath",
  }

  file { $filepath:
    ensure	=> 'present',
    mode    => '0644',
    owner	  => 'root',
    group	  => 'root',
    source	=> 'puppet:///modules/mongo_shell/repo34',
    require	=> Exec["check_presence"],
  }

  package { $packages:
    ensure	=> 'installed',
    require	=> File["$filepath"],
  }

}
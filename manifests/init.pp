#init file for nginx installation module
class nginx {
	
    #add official nginx repo
    file {"create nginx repo":
      ensure	=> 	file,
      path	=>	"/etc/yum.repos.d/nginx.repo",
      source	=> 	"puppet:///modules/nginx_conf/nginx.repo",
    } 

    #create new nginx user
    user {"nginx-user add":
      ensure	=>	present,
      name	=>	"nginx-user",
      uid	=>	777,
      gid	=>	777,
      shell	=>	"/bin/bash",
      home	=>	"/home/nginx-user",
    }

    nginx::resource::vhost{ 'test_site' :
    	port => 8000,
    	docroot => '/var/www/test/',
    	source => 'https://github.com/puppetlabs/exercise-webpage/blob/master/index.html'
    }
}

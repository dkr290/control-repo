node 'node3' {

    class {'tomcat':
    
      xms           =>"54m",
      xmx           => "80m",
      service_state => 'running'
      
      
    }
    
    tomcat::deploy {'sysfoo':
    
      deploy_url => 'https://1-135286305-gh.circle-artifacts.com/0/tmp/circle-artifacts.PKBa5ZP/sysfoo.war',
      checksum => 'md5',
      checksum_value => 'be3ecf5f67648577532e7f0a8791e8e8',
    
    
    }

  

}





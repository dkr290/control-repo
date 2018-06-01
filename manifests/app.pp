node 'node1' {

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

node 'node2' {

      class {'tomcat':
    
      xms           =>"64m",
      xmx           => "128m",
      service_state => 'running'
    }
    
    tomcat::deploy {'sysfoo':
    
      deploy_url => 'https://1-135286305-gh.circle-artifacts.com/0/tmp/circle-artifacts.PKBa5ZP/sysfoo.war',
      checksum => 'md5',
      checksum_value => 'be3ecf5f67648577532e7f0a8791e8e8',
    
    
    }
    
   


}



node default {
  notify { '##### Default node ####':
     
  message => '
     Applying the default Block
     There is no definition for that particular node.
  
  '
  }

}
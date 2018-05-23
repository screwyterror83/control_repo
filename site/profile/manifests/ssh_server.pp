class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service {'sshd':
               ensure => 'running',
               enable => 'true',
      }
      ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZj9f/q46sUwPzYMGgF1AgJA/rUz7feikqN21DCg9/UCv9niQg3AvNgPqsEEr0XhcmWCP5jN9Ml4X260YPQp8LygDdfi4ShvEkV7f60QTGfsT6Am2Ing1+AWg61shiDVkgM0i0UxFeU3FLXMGCFpSsloO5rN6a3RSD83YFa1q7WgZR3AxXi47MlKxOVavmUv8XJamT7aoh4K5sSX5AJCCg990xDBtw2mHoP8/HCoLpu4gxHhnh/Pin/2olClUiU+47FG2cR7zhC1qaGG7MZZn1Px2+J6GD7auMQl2PEqMFyYCmh4LHx5ZQ1amRM/+Jmue6pfcpHnm8hz+fGtmn0BrT',
       }
}
               

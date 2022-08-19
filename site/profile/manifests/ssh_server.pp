class profile::ssh_server{
        package {'openssh-server':
                  ensure => present,
        }
        service {'sshd':
                  ensure => 'running',
                  enable => 'True',                                  
        }
        ssh_authorised_key { 'root@master.puppet.vm':
                   ensure => present,
                   user   => 'root',
                   type   => 'ssh-rsa',
                   key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjb0kxO+UwJdWm2qz5u1MdHq9zD7PyOas+zdXAM8skGDwxnmVqk4MUvtfZrptV7S8bY7hseqtDgqvJNIll6aaS07ZYeo4MecBd7WTot/p1ZScMS0swl69BVyUUF/L0supF3MP3zl6TeTrj7xv6WR7XhtNiob+k/BcFcXraIc+d9Xinq4TiL6LlJj2nf0wB6u8bBRNGwTEclRxv3ICDvIqktt1VBd2FpObzw9WfRsWZGaodUhFNVgrSdP2ZJmPK6/lONv8lpnZlREtUgNUvW1mzw7wcKdw7Uj/KtehZqvQ5+Lq87GFiqI1c2q3uipYeGWmTrn6hVceq+LyH4nal3AHp',
        }
}

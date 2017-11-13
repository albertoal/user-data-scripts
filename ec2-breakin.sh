#cloud-config
# This script can be used to provision an user with a public ssh key to an EC2 instance
# It can be passed as EC2 user data when starting the instance
# Useful if you locked yourself out!
# Add your public ssh key under ssh-authorized-keys then ssh with youruser@host
cloud_final_modules:
- [users-groups,always]
users:
  - name: youruser
    groups: [ wheel ]
    sudo: [ "ALL=(ALL) NOPASSWD:ALL" ]
    shell: /bin/bash
    ssh-authorized-keys: 
    - ssh-rsa ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDcstzKjtPR0+uFqxzF/1FmA7vec/eELBGwl1wAi43ILQRPvWt7mQnnbvsthTPxet/j951JXTQjlvZJOpf+znEgeEcJR8U2xSJaQbkjvyUkz3MV5oB6wHckmm781480a+XMlauAUPNAUD2lUGyhQ8gK/wSdJjlsm5S0rCqOrdqKNx9FyLUCpikXPhoHLNE7sqmJDxXkYXKD9za8C7TYChdTw4Ct/O1/myhUbezYj3XWCN0fOukUEYFEzNAhE4MP76d0HD/VEOR1SfkcfKNgzBXrYiC8mOfD4FyQAANTHCc8+V3zsvvpATieRCMs1Nf82d2IMrDluRwqNIVweoWl+e3XvIEh9abDqS9G/wGXudzoceYqIeIYFhDGbjNr1zLKTjT7IMXX/0OOjxPRMeik5+K1hVi0HPq754EWNFBoNueqqZSiEf+d6Tweig7ftdd4cHps/tqfOghhFMZhbd31LfdEfp2oKtMaQOVJcwYPdJtFhWbncsrq7Grc2/FtWfHOWgbK3X4t79oS6MtXD274jeVRYLtVCzHmUIlAXQ0/a05vKUeY0GkWEil5mYjzqykiHWpNkypNijtN3+Dlht78JqlrGcRr//ltA9doNTpSyf95+PDUETZdExzp3n7pITxWZVCrtmx5L3XQqUMoGhlmIMdOGyc0S/SxqdTKE9tIeN125w==

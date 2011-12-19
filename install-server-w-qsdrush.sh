#!/bin/bash

# To install Quickstart Server:
#
# 1) Install server (e.g. AMI on Amazon)
#
#    Process:  
#      http://www.ardentsoft.com/blog/2009/3/3/lamp-on-ec2-part-1-setting-up-amazon-web-services.html
#    AMI:  
#      http://developer.amazonwebservices.com/connect/entry.jspa?externalID=3101
#      US West AMI ID:  	ami-c997c68c
#        64-bit, ebs
#      Login user: ubuntu
#
# 2) bash ~/quickstart/install-quickstart-server.sh

cd ~


# add to sudoers file - try to add only what is needed

echo "quickstart ALL=(ALL) NOPASSWD: /usr/sbin/apache2ctl" | sudo tee -a /etc/sudoers > /dev/null 
echo "quickstart ALL=(ALL) NOPASSWD: /usr/sbin/a2ensite" | sudo tee -a /etc/sudoers > /dev/null 
echo "quickstart ALL=(ALL) NOPASSWD: /usr/sbin/a2dissite" | sudo tee -a /etc/sudoers > /dev/null 

# Hold off for now on whether we really need to grant nopassword to all actions.

# echo "quickstart ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers > /dev/null 

bash -x ~/quickstart/quickstart-3-lamp.sh
bash -x ~/quickstart/quickstart-6-devenv.sh 
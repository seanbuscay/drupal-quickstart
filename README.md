# Drupal Quickstart LTS

A minor fork of the Drupal Quickstart: Pre-made Development Environment with a focus on LTS Ubuntu and custom environment variables such as user name and password.

NOTE: For a Pre-made Drupal Development Environment I recommend my more recent project @ https://github.com/seanbuscay/drupal-server .

## Canonical Drupal Quickstart

The primary and canonical Drupal Quickstart project is located here: http://drupal.org/project/quickstart

Quickstart is a pre-made downloadable development environment for Drupal.

It provides "state-of-the-art" development and testing tools, without requiring users to:

1. hack up their personal computer,
2. spend time learning how to hack up their personal computer

The Drupal Quickstart project is a most excellent tool for Drupal developers.  
You can download a fully ready to run Drupal development environment from its project page.

See:

1. http://drupal.org/project/quickstart
2. http://drupal.org/node/788080
3. http://groups.drupal.org/quickstart-drupal-development-environment
4. http://www.youtube.com/user/drupalquickstart

## About this Fork

1. This project is really a personal fork, which may have changes that other Drupal developers might find useful for incorporating into their own custom Drupal Quickstart Environment.  

2. This fork just focuses on the Long-term Support (LTS) version of Ubuntu.

    * The thinking here is that many of the servers we deploy to maintain and use this version of Ubuntu.
    
    * Currently the LTS version of Ubuntu is 10.04.
    
3. This fork does not provide a pre-built downloadable version of the project.  

    * It provides the collection of scripts used by developers to build their own version of Drupal Quickstart.

4. This fork may deprecate or ignore certain parts of the canonical Drupal Quickstart scripts which target VirtualBox.

    * It will still build on VirtualBox, and other VMs as well as on any server with Ubuntu 10.04 installed on it.
    
    * It will likely build on other versions of Ubuntu and in other distros too.
    
    * It just targets Ubuntu 10.04 first and is not interested in maintaining support for anything else.

5. Where possible, changes to the original project are done via tweak scripts and not directly in the original code.

## Install

### quickstart as your user

__This is the default Quickstart setup and is safe only for a secure local VM or secure local server.__

1. On your Ubuntu Server/VM, add the user "quickstart" with the password "quickstart" and make sure the user has sudo privileges.

    * The easiest way it to just use "quickstart" as the user and password during the Ubuntu install process

2. Log in as the "quickstart" user.

3. Run:

        sudo apt-get -y install git-core
        git clone git@github.com:seanbuscay/drupal-quickstart.git quickstart
        bash ~/quickstart/install-quickstart.sh

    * During the scripted process, use "quickstart" for all passwords

    * At the end of the scripted process, a text file will open with some instructions for manual configuration

## File List

1. export-prep.sh

    * Good to use to free up space before exporting and sharing VM
    
    * __Not changed from original project__

2. install-quickstart.sh

    * __Not changed from original project__

3. install-quickstart-server.sh

    * Just a wrapper script to run ~/quickstart/quickstart-3-lamp.sh
    
    * __Not changed from original project__
    
4. quickstart-1a-guest.sh

    * Not used in this fork
    
    * VirtualBox specific - good to use to if using VirtualBox
    
    * __Not changed from original project__

5. quickstart-1-prep.sh 

    * Add quickstart user to sudoers file - if this does not work, you need to do this manually

    * Also tweaks Ubuntu to turn off screen saver and login sound

    * __Not changed from original project__

6. quickstart-2a-update.sh

    * Update and upgrade to the latest in the 10.04x branch (or whatever branch you are on)

    * __Not changed from original project__

7. quickstart-2-slim.sh

    * Added back in the removal of Open office for LTS version

8. quickstart-3-lamp.sh

    * The awesome script that sets up the server environment.
    
    * Though this file is not changed from the original, a tweak file is provided to change it.
    
    * Changed to set mysql password via the initvars.sh file

9. quickstart-4-ides.sh

    * Installs and configures IDEs, graphical version control, and misc. tools.
    
    * __Not changed from original project__
    
10. quickstart-5-browsers.sh

    * Installs Firefox and Google Chrome
    
    * Tweaked this file from the original to not have to go through the manual Firefox profile setup
    
    * Make Chrome the default browser instead of Firefox
    
11. quickstart-6-devenv.sh

    * Sets up Dev environment.
    
    * This file will be changed.  Probably via tweak scripts.
    
    * __Not changed from original project__
    
12. quickstart-7-config.sh

    * Configure changes to Ubuntu and misc. tools.
    
    * Just leave in for now "Remove new 3d-glasses scrollbars" though not needed for LTS
    
    * __Not changed from original project__

13. quickstart-8-manualconfig.sh

    * Run an initial site setup example for:
    
        * D7 - 
          
            drush qc --domain=example.dev
        
        * D6 -
        
            drush qc --domain=example6.dev --makefile=d6.make
            
    * Open the manual configuration text.
    
    * __Not changed from original project__
    
14.  quickstart-8-manualconfig.txt

    * Directions for manual configuration steps. 
    
    * __Not changed from original project__

## Change log

## Add initvars.sh file
- Able to set passwords from a central location

## Change quickstart-3-lamp.sh
- Set mysql password via the initvars.sh file

Mon, 05 Dec 2011 21:02:42 -0500 
### Change quickstart-5-browsers.sh
- Tweaked this file from the original to not have to go through the manual Firefox profile setup
- Make Chrome the default instead

Mon, 05 Dec 2011 19:52:29 -0500 
### Adjust quickstart-2-slim.sh for LTS Version
- Add back in the removal of Open office for LTS version
- Slim a additional games and drivers

Mon, 05 Dec 2011 17:39:23 -0500 
### Cleanup and minor changes in prep for custom code changes

- In progress (not ready to run scripts from this version yet)
- Remove canonical README.txt
- Change git ignore to exclude private folders and Eclipse IDE settings


Mon, 05 Dec 2011 17:27:26 -0500 
### Check fresh canonical Drupal Quickstart code

This way anyone can see what changes were made to the original code base.  

- commit # 16ee8b36e15f446d05f93c885ee59b7bc086d1cd
- Wed, 25 May 2011 13:59:08 +0000 (08:59 -0500)
- http://drupalcode.org/project/quickstart.git/snapshot/16ee8b36e15f446d05f93c885ee59b7bc086d1cd.tar.gz

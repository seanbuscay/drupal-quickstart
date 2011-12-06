# Drupal Quickstart LTS

A minor fork of the Drupal Quickstart: Pre-made Development Environment with a focus on LTS Ubuntu and custom environment variables such as user name and password.

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

- This project is really a personal fork, which may have changes that other Drupal developers might find useful for incorporating into their own custom Drupal Quickstart Environment.  

- This fork just focuses on the Long-term Support (LTS) version of Ubuntu. 
    --The thinking here is that many of the servers we deploy to maintain and use this version of Ubuntu.  
    --Currently the LTS version of Ubuntu is 10.04.
    
- This fork does not provide a pre-built downloadable version of the project.  It provides the collection of scripts used by developers to build their own version of Drupal Quickstart.

- This fork may deprecate or ignore certain parts of the canonical Drupal Quickstart scripts which target VirtualBox.
   --It will still build on VirtualBox, but will also build on other VMs as well as on any server with Ubuntu 10.04 installed on it.
   --It will likely build on other versions of Ubuntu and in other distros too.
   --It just targets Ubuntu 10.04 first and is not interested in maintaining support for anything else.

## File List

1. export-prep.sh
- Good to use to free up space before exporting and sharing VM
- Not changed from original project

2. install-quickstart.sh
- Not changed from original project

3. install-quickstart-server.sh 
- Just a wrapper script to run ~/quickstart/quickstart-3-lamp.sh
- Not changed from original project

4. quickstart-1a-guest.sh
- Not used in this fork
- VirtualBox specific - good to use to if using VirtualBox
- Not changed from original project

5. quickstart-1-prep.sh 
- Add quickstart user to sudoers file - if this does not work, you need to do this manually
- Also tweaks Ubuntu to turn off screen saver and login sound
- Not changed from original project

6. quickstart-2a-update.sh
- Update and upgrade to the latest in the 10.04x branch (or whatever branch you are on)
- Not changed from original project

7. quickstart-2-slim.sh
- Added back in the removal of Open office for LTS version
 

## Change log

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

# Docker-to-VM-or-Hardware
Convert a Docker Image to a VM or Hardware

# Installs
1. Install d2vm for this process (See link at bottom)

# Docker to VM
Use make-docker-to-vmfolder for the following process

1. Edit variables in make-vm-image.sh

2. Run make-vm-image.sh with sudo

3. Import vm image to your virtualization software

# Build Installer VM/Media OS from scratch
Use create-install-image folder for the following process

This process will try to burn to a drive

1. Add the raw image(s) to /docker/diskimages

2. Edit the variables in buildimage.sh

3. Run buildimage.sh *sudo will be required

# VM to HDD using the Installer OS
1. On the Installer OS run osinstaller.sh

2. Follow the prompts to install the raw image to an HDD

# Using an Installer OS already created
1. Add the raw image(s) to the diskimages folder

2. Run osinstaller.sh

3. Follow the prompts to install the raw image to an HDD

# Notes
root is the default account and the password is based on what you set

I don't own any of the install packages

# Sources
https://github.com/linka-cloud/d2vm
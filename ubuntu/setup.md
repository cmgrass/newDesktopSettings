# Ubuntu Desktop Settings
This is my checklist for quickly bringing up a fresh Ubuntu Desktop install.
Setup based on transition of preferences from 1604 to 2004

## Update System and Packages
$ sudo apt-get update
$ sudo apt-get upgrade

## Appearance Settings
* Start->Settings->Appearance
  - Dark theme
  - Icon size 32 (adjust as desired, usually relatively small)

## Time/Date
* Start->Settings->Date & Time
  - Time Zone: EDT UTC-04 Detroit
  - Time Format: 24 hour

## Keyboard Repeat Rate
* Start->Settings->Universal Access->Typing->Repeat Keys
  - Delay (relatively low)
  - Speed (relatively high)

## Power Saving
* Start->Settings->Power
  - Blank Screen: Never

## Terminal Settings
* Open terminal
* Menu->Preferences
  - General
    * Open new terminals in: Window

  - Setup profile with following parameters
    * grasscm_main
    * 96 columns, 32 rows

  - Set as default

## Install git
  $ sudo apt install git

## Install vim
* Open terminal:
  $ sudo apt install vim

## Install Solarized for terminal
https://github.com/aruhier/gnome-terminal-colors-solarized

* $ git clone https://github.com/altercation/vim-colors-solarized

* $ cd gnome-terminal-colors-solarized

* Follow github/readme.md steps

* Follow the install script
  - Includes dircolors as an option during the install script

* For dircolors, add 'eval' line to ~/.bashrc
  - EX: "eval `dircolors /home/grasscm/.dir_colors/dircolors`"
  - I did not have to remove any other eval/dircolor statement from default .bashrc.

* refresh shell and check it worked
  - $ source ~/.bashrc
  - $ ls -l

## Install Solarized for vim
https://github.com/altercation/vim-colors-solarized

* $ git clone https://github.com/altercation/vim-colors-solarized

* $ cd vim-colors-solarized

* $ mkdir ~/.vim

* $ mkdir ~/.vim/colors

* Follow github/readme.md steps

## Install tmux
* $ sudo apt install tmux

## Install Solarized for tmux
https://github.com/seebi/tmux-colors-solarized

* $ git clone https://github.com/seebi/tmux-colors-solarized

* Follow github/readme.md steps
  - Was basically creating (or appending to) a ~/.tmux.conf file from a template
    in the repository.

* Needed to add my own line (thanks to unix.stackexchange post)
  \# Specify terminal type
  set -g default-terminal "screen-256color"

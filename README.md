# README

This repository contains a dummy rails application.


# INSTALLATION
This file contains the installation guide for setting up this Rails application from scratch.

## Ruby Setup
**First, install curl and gnupg**

    sudo apt install curl
    sudo apt install gnupg2

**You can install RVM using:**

    curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    \curl -sSL https://get.rvm.io | bash -s stable

**Note**: 
* Open you terminal, Select Edit from the menu Bar and click on Profile Preferences (Ubuntu 17.04 and before) or Preferences (Ubuntu 18.04 and higher)
* Open Command tab and tick "Run command as a login shell" and Close

## PostgreSQL Setup
**You can install PostgreSQL using:**

     sudo apt install postgresql postgresql-contrib libpq-dev
 
    sudo -u postgres createuser -s root -P
**Inside postgresql command line run:**

    \password root
**Confirm password and run `\q`**

## Rails Setup

**Rails: 5.2.2 & Ruby:2.6.1**

    rvm install 2.6.1
    rvm use 2.6.1 --default
    gem install bundler
    gem install rails -v 5.2.2
**Install mysql gem and the libmysqlclient-dev library**
    
    sudo apt-get install libmysqlclient-dev
    gem install mysql2
**Note: For some of the js gems**

    sudo apt install nodejs

## DATABASE

**Update `database.yml`**

Update the following details present in database.yml

    username: <username>
    password: <password>

**Create Database:**
   
    rake db:create   
    
**Update Database:**

    rake db:migrate    
    
**Populate Database:**

    rake db:seed
        
## Connecting to Dev Server

* Once you have completed the above procedure, run `rails s` or `rails s -p <port>`
* You will find the login page on successful boot of the server.




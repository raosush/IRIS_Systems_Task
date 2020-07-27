## Problem Statement

IRIS has created a blog-publishing service (similar to Blogspot), which allows students of NITK to start up blogs with minimal effort. Dedicated to automation (or just plain lazy), we would like to simplify testing and deployment.

We have decided on using Travis CI as our CI provider and require you to help us out with the following tasks:

1. Configure Travis CI to run tests for the Rails app.
2. Configure Travis CI to run style checks using overcommit gem
3. Configure Travis CI to deploy to Heroku if the master branch passes all tests.
4. Create a cron job to send an email of user activity weekly (optional, requires basic ruby knowledge).

### Resources

1. [Testing Rails Application](https://guides.rubyonrails.org/testing.html)
2. [Overcommit - A fully configurable and extendable git hook manager](https://github.com/sds/overcommit)
3. [How to setup Travis CI for rails](https://medium.com/full-taxx/how-to-setup-travis-ci-for-a-rails-application-78a453963300)
4. [Heroku Deployment - Travis CI](https://docs.travis-ci.com/user/deployment/heroku/)
5. [Cron Jobs - Travis CI](https://docs.travis-ci.com/user/deployment/heroku/)

Note: Pull changes from the main application repository frequently as we might push bugfixes and documentation.


## Installation
This file contains the installation guide for setting up this Rails application from scratch.

### Ruby Setup
**First, install curl and gnupg**

    sudo apt install curl
    sudo apt install gnupg2

**You can install RVM using:**

    curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    \curl -sSL https://get.rvm.io | bash -s stable

**Note**: 
* Open you terminal, Select Edit from the menu Bar and click on Profile Preferences (Ubuntu 17.04 and before) or Preferences (Ubuntu 18.04 and higher)
* Open Command tab and tick "Run command as a login shell" and Close

### PostgreSQL Setup
**You can install PostgreSQL using:**

     sudo apt install postgresql postgresql-contrib libpq-dev
 
    sudo -u postgres createuser -s root -P
**Inside postgresql command line run:**

    \password root
**Confirm password and run `\q`**

**In case of error, run the following:**

    sudo -u postgres psql
 *Run this command within psql command line:*
 
    CREATE ROLE root WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD '<password>';

### Rails Setup

**Rails: 5.2.2 & Ruby:2.6.1**

    rvm install 2.6.1
    rvm use 2.6.1 --default
    gem install bundler
    gem install rails -v 5.2.2
**Note: For some of the js gems**

    sudo apt install nodejs

### DATABASE

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
        
### Connecting to Dev Server

* Once you have completed the above procedure, run `rails s` or `rails s -p <port>`
* You will find the login page on successful boot of the server.

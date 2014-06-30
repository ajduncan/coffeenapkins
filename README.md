# Coffee Napkins #

Simple rails app that allows sharing of simple ideas, such as you might describe on a napkin while having coffee with a friend.

## Installation ##

* Install rvm if you haven't.

	$ \curl -sSL https://get.rvm.io | bash -s stable
	source ~/.rvm/scripts/rvm

* Install the required version of ruby and rails

	$ rvm 2.1.2
	$ gem install rails -v 4.1.2
	$ bundle install

* Copy rake, rails, etc to ./bin?

* Perform database migrations

	$ bin/rake db:migrate

## Running ##

To run and test:

	$ bin/rails server

Then see: http://localhost:3000/

## Vagrant ##

To run in vagrant:

	$ curl -L https://www.opscode.com/chef/install.sh | sudo bash
    $ sudo gem install librarian-chef
	$ vagrant plugin install vagrant-omnibus
	$ vagrant plugin install vagrant-librarian-chef
	$ librarian-chef install
	$ vagrant up
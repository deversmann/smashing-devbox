#!/usr/bin/env bash

echo '' >> ~/.bashrc 
echo 'export GEM_HOME=~/.ruby/' >> ~/.bashrc
echo 'export PATH="$PATH:~/.ruby/bin"' >> ~/.bashrc
export GEM_HOME=~/.ruby/
export PATH="$PATH:~/.ruby/bin"
mkdir ~/.ruby
gem install sassc:2.1.0 bundler smashing
smashing new test_dashboard
cd test_dashboard
echo "" >> Gemfile
echo "gem 'sassc', '<= 2.1.0'" >> Gemfile
bundle install

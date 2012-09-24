source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
#group :assets do
#  gem 'sass-rails',   '~> 3.2.3'
#  gem 'coffee-rails', '~> 3.2.1'
#
#  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
#  # gem 'therubyracer', :platform => :ruby
#
#  gem 'uglifier', '>= 1.0.3'
#end

gem "heroku", "~> 2.2.1"

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'sqlite3'
  gem 'sunspot_solr'
  gem 'jasmine', "~>1.1.0"
  gem "rspec", "~> 2.9.0"
  gem 'rspec-rails', "~> 2.9.0"
  gem "spork"
  gem 'factory_girl_rails'
  gem 'faker', "~>1.0.1"

end

group :development do
  gem 'ruby-debug19'
  gem 'guard-spork'
end

group :test do
  gem 'autotest-rails', "~>4.1.1"
  gem 'vcr', "~>1.11.3"
  gem 'webmock', "~>1.7.6"
  gem 'guard-spork'
end


group :production do
  gem 'pg'
end

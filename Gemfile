source 'https://rubygems.org'
# ruby "2.4.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails', '4.2.8'
gem 'bcrypt',         '3.1.11'
gem 'actionview-encoded_mail_to'
# gem 'sqlite3', '~> 1.3.13'
gem 'pg','0.20'
# Use haml
gem 'haml'
gem 'haml-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Used for dotenv file
gem 'dotenv-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'cloudinary'
gem 'katex', '~> 0.6.0'
# gem 'mathjax-rails'
#Browser for detecting smartphone and laptop view
gem 'browser', '2.0.3'

gem "will_paginate", "~> 3.0.4" 

# for authentication
gem 'devise'
gem 'omniauth-facebook', "6.0.0"
gem 'omniauth-google-oauth2', "0.8.0"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.13'
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.4.2'
  gem 'ZenTest', '4.11.2'
end

group :development do
   gem 'sqlite3', '~> 1.3.13'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  gem 'hpricot'
  gem 'ruby_parser'
end

group :test do
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'rubocop-rspec', require: false
  gem 'cucumber-rails-training-wheels'
  gem 'factory_bot_rails'
end

group :production do

  gem 'rails_12factor'
end
group :production do
end

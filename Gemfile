source 'https://rubygems.org'
ruby '2.1.1'

gem 'bootstrap-sass'
gem 'bootstrap_form'
gem 'coffee-rails'
gem 'rails', '4.1.1'
gem 'haml-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'pg'
gem 'bcrypt'
gem 'fabrication'
gem 'faker'

group :development do
  gem 'thin'
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '2.99'
  gem 'spring-commands-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
  gem 'guard-rspec'
  gem 'guard-livereload'
end

group :test do
  gem 'database_cleaner', '1.2.0'
  gem 'shoulda-matchers'
  gem 'spring'
  gem 'capybara'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
end


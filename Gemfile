source 'https://rubygems.org'

gem 'rails', '~>3.2.6'
gem 'mysql2'
gem 'unicorn'
gem 'jquery-rails'
gem 'haml-rails'
gem 'rabl' # must appear before 'gon'
gem 'gon'
gem 'settingslogic'
gem 'rails-backbone'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'compass-normalize'
  gem 'haml_coffee_assets'
  gem 'execjs'
end

group :development do
  gem 'vendorer'
  gem 'heroku'
  gem 'quiet_assets'
  gem 'lograge'
end

group :development, :test do
  gem 'rspec-rails', '~>2.6'
  gem 'factory_girl_rails', '>=1.1.rc1'
  gem 'jasmine-rails'
  gem 'debugger'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
  gem 'factory_girl_rails', '>=1.1.rc1', :require => false
  gem 'rspec-instafail', '~> 0.2.4'
  gem 'shoulda-matchers', :git => 'git://github.com/thoughtbot/shoulda-matchers.git'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'capybara'
end

group :production do
  gem 'pg'
end

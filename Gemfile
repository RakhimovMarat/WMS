# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 7.0.4'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.2.2'
gem 'devise'
gem 'rubocop', '~> 1.44', require: false
gem 'redis-client'
gem "sidekiq", "~> 7.0"
gem 'pundit'
gem 'doorkeeper'
gem 'active_model_serializers'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :test, :development do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end



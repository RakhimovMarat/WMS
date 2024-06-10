# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.1'

gem 'active_model_serializers'
gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.2.2'
gem 'devise'
gem 'doorkeeper'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pagy'
gem 'pg', '~> 1.1'
gem 'puma', '~> 6.0'
gem 'pundit'
gem 'rails', '~> 7.1.2'
gem 'ransack', '~> 4.1'
gem 'redis-client'
gem 'rubocop', '~> 1.44', require: false
gem 'sidekiq', '~> 7.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

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

# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

# ruby_version
ruby '3.4.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 6.1.7.10'
# Use mysql as the database for Active Record
gem 'mysql2', '0.5.6'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# javascript use windows env.
gem 'execjs'
gem 'autoprefixer-rails'
gem 'jquery-rails'

# audio
gem 'audiojs-rails'
gem 'carrierwave-audio'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-rails'
gem 'font-awesome-sass'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# image controll
gem 'carrierwave'
gem 'rmagick'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# css layout
gem 'bootstrap'
gem 'bootswatch'

# japanese env
#gem 'mimemagic', '~> 0.3.10'
gem 'rails-i18n', '~> 6.0.0'

# Logger Error
gem 'concurrent-ruby', '1.3.4'

# You can add mutex_m to your Gemfile or gemspec to silence this warning.
gem 'mutex_m'

# devise
gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'

# admin
gem 'administrate'
gem 'cancan'

# pagenate
gem 'nokogiri'
gem 'kaminari'
gem 'config'

# markdown
gem 'redcarpet', '>= 3.5.1'
gem 'coderay'

# erb-linter
gem 'erb_lint', require: false

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# DidYouMean::SPELL_CHECKERS.merge!(error_name => spell_checker)
gem 'thor'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug', platforms: [:mri, :mingw]
  gem 'byebug', platforms: [:ruby]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec'
  gem 'rspec-rails'

  gem 'selenium-webdriver'

  # mail
  gem 'letter_opener_web'
end

group :test do
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  # new rubygems webdrivers
  gem 'webdrivers'
end

# use windows env
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
gem 'tzinfo-data' if Gem.win_platform?

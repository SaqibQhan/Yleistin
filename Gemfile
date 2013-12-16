source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'figaro'
gem "less-rails"
gem "twitter-bootstrap-rails"
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'devise_invitable'
gem 'haml-rails'
gem 'rolify'
gem "font-awesome-rails"
gem 'simple_form', '>= 3.0.0.rc'
gem 'thin'
gem 'rails-i18n', '~> 4.0.0.pre' # For 4.0.x
gem 'jquery-ui-rails'
gem 'tlsmail'
gem 'whenever', :require => false
gem 'leaflet-rails', :git => 'git://github.com/axyjo/leaflet-rails'
gem 'rb-readline'
gem 'social-share-button'
gem 'activerecord-import'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms => [:mri_19, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require => nil
  gem 'quiet_assets'
  gem 'rb-fchange', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-inotify', :require => false
  gem 'debugger'
  gem 'habtm_generator', :group => :development
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'mysql2'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
end

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

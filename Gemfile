source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.15'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'nested_form'
gem 'bootstrap_forms'
gem 'cancan'
gem 'haml-rails'
gem 'mysql2'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'omniauth-vkontakte'
gem 'omniauth-odnoklassniki'
gem 'rolify'
gem 'simple_form'
# gem 'faraday', '~> 0.9', path: 'lib/gems/faraday'
# gem 'faraday_middleware', '~> 0.9', git: 'git@github.com:clevertechru/faraday_middleware.git', branch: 'faraday-0.9'
# gem 'faraday_middleware-parse_oj', path: 'lib/gems/faraday_middleware-parse_oj'
# gem 'vkontakte_api', '~> 1.3', path: 'lib/gems/vkontakte_api'
gem 'vkontakte_api', git: 'https://github.com/7even/vkontakte_api.git', branch: 'faraday-0.9'
gem 'socialgate', path: 'lib/gems/socialgate'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  #gem 'foreman'
  gem 'figaro'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end
group :production do
  gem 'rails_12factor'
  gem 'pg'
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
end

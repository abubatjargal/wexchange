source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "elasticsearch", ">= 1.0.14"
gem 'elasticsearch-model'

gem 'faraday_middleware'
gem 'faraday_middleware-aws-signers-v4'
gem 'searchkick'
gem 'redis'
gem 'predictor'
gem 'rails_real_favicon'
gem 'pusher'
gem 'acts-as-taggable-on'
gem 'activeadmin'
gem 'sidekiq'
gem 'gon'
gem "paperclip",'4.3.6' #last stable version
gem 'delayed_job', '~> 4.1', '>= 4.1.3'
gem 'delayed_job_active_record', '~> 4.1', '>= 4.1.2'
gem "daemons"
gem "aws-sdk" , '<2.0'
gem 'friendly_id'
gem 'figaro'
gem 'dotenv-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'fancybox-rails'
gem "jquery-fileupload-rails"
gem 'twitter-typeahead-rails'
gem 'dropzonejs-rails'
gem "select2-rails"

gem 'chartkick'
gem 'nouislider-rails'
gem 'multi-select-rails'

gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'
# Use for materalize and ui
gem 'materialize-sass'
gem 'will_paginate'
gem 'will_paginate-materialize'
gem 'simple_form'
# Use for searching
gem 'ransack'

# Use for rendering dates and times
gem 'local_time'
# Use for Stripe payment
gem 'stripe'
gem 'stripe_event'
gem "bcrypt"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'recommendable'

gem 'redis'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'jquery-raty-rails', github: 'bmc/jquery-raty-rails'
gem 'paperclip-av-transcoder'
gem "paperclip-ffmpeg"
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development, :test do # <<<< :development, not devlopment
  gem 'better_errors'
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem "rails-erd"
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
end






group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

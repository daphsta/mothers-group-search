source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.1'
gem 'hanami-model', '~> 1.1'
gem 'hanami-bootstrap'

gem 'pg'
gem 'mongoid', '~> 6.1.0'

gem 'warden'
gem 'bcrypt'

gem 'sass'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
  gem 'byebug'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'rspec-hanami'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end

source 'https://rubygems.org'

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '~> 2.3.2'
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'rspec-rails', '2.9.0'
	
group :development, :test do
	gem 'sqlite3'
	gem 'guard-rspec', '0.5.5'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', '~> 4.0.0'
	gem 'coffee-rails'
	gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '~> 2.0.0'

group :test do
	gem 'capybara', '1.1.2'
	gem 'rb-fsevent',  :require => false
	gem 'growl', '1.0.3'
	gem 'guard-spork', '0.3.2'
	gem 'spork', '0.9.0'
end

group :production do
	gem 'pg', '0.12.2'
end
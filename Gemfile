source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-ui-rails', '~> 4.2.1'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '3.3.6'
gem 'devise'
gem 'mail_form'
gem 'simple_form'
gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem "recaptcha", require: "recaptcha/rails"
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'figaro'
gem 'rails-i18n', '~> 5.0.0'
gem 'devise-i18n'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

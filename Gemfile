source "https://rubygems.org"

group :development do
  gem "minitest", ">= 0"
  gem "rdoc", "~> 3.12"
  gem "bundler", "~> 1.0"
  gem "juwelier", "~> 2.1.0"
  gem "simplecov", ">= 0"

  # Use local copy of simplecov-console in development when checked out, fetch from git otherwise
  if File.directory?(File.expand_path("../../simplecov-console", __FILE__))
    gem 'simplecov-console', :path => File.expand_path("../../simplecov-console", __FILE__)
  else
    gem 'simplecov-console', :git => 'https://github.com/chetan/simplecov-console.git'
  end
end

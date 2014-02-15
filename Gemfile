source 'https://rubygems.org'

gem 'berkshelf', '~> 2.0'
gem 'chef', '~> 11.8'
gem 'rubocop', '~> 0.18'
gem 'foodcritic', '~> 3.0'
gem 'chefspec', '~> 3.2'
gem 'stove', github: 'sethvargo/stove'
gem 'rake'

group :integration do
  gem 'test-kitchen', '~> 1.2'
  gem 'kitchen-vagrant'
  gem 'kitchen-ec2'
  gem 'unf' # Stop Fog (used by kitchen-ec2) complaining
  gem 'serverspec', '~> 0.14'
end

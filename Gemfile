source 'https://rubygems.org'

gem 'berkshelf', '~> 3.1'
gem 'chef', '~> 11.12'
gem 'rubocop'
gem 'foodcritic', '~> 3.0'
gem 'chefspec', '~> 3.4'
gem 'stove', github: 'rosstimson/stove', branch: 'solve_gem_berkshelf'
gem 'rake'

group :integration do
  gem 'test-kitchen', '~> 1.2'
  gem 'kitchen-vagrant'
  gem 'kitchen-ec2'
  gem 'unf' # Stop Fog (used by kitchen-ec2) complaining
  gem 'serverspec', '~> 1.6'
end

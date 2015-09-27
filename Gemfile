source 'https://rubygems.org'

ruby '2.2.3'

gem 'puma',            '~> 2.14.0'
gem 'hobbit',          '~> 0.6.0'
gem 'hobbit-contrib', require: 'hobbit/contrib'
gem 'tilt',           require: 'tilt/erb'

# group :development, :production do
#   gem 'tux'
# end

group :test do
  gem 'fix-its',        '~> 0.3.0'
  gem 'rake',                             require: 'rake'
  gem 'rack-test',      '~> 0.6.3',       require: 'rack/test'
  # gem 'faker',                            require: 'faker'
  # gem 'factory_girl',                     require: 'factory_girl'
  # gem 'database_cleaner',                 require: 'database_cleaner'
end

group :production do
  gem 'rack-cache',         '~> 1.2',   require: 'rack/cache'
end

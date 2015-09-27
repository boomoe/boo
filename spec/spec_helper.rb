# ENV['RACK_ENV'] = 'test'

require_relative File.join '..', 'app'

require 'rack/test'
require 'fix/its'

root = ::File.dirname __FILE__
Dir[ File.join(root, 'support', '**', '*.rb') ].each { |f| require f }

include Rack::Test::Methods

# begin
#   DatabaseCleaner.start
#   FactoryGirl.lint
# ensure
#   DatabaseCleaner.clean
# end

def app
  Rack::Builder.parse_file('config.ru').first
end

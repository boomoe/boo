#\ -s puma

root = ::File.dirname __FILE__
require ::File.join root, 'app'

if ENV['RACK_ENV'] == 'production'
  require 'rack/cache'
  use Rack::Cache
end

use Rack::Deflater
use Rack::Static, urls: ["/css", "/img", "/js"], root: "public"

run Moe::Boo

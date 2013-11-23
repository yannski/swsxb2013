require './swsxb_application'

use Rack::Cache, verbose: false if ENV['RACK_ENV'] == "production"

map SwsxbApplication.assets_prefix do
run SwsxbApplication.assets
end

map '/' do
run SwsxbApplication
end

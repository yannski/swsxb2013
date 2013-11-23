require './swsxb_application'

#use Rack::Cache, verbose: false

map SwsxbApplication.assets_prefix do
run SwsxbApplication.assets
end

map '/' do
run SwsxbApplication
end

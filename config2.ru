require './config/environment'
require_relative "config/environment"

run Rails.application
Rails.application.load_server

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

use Rack::JSONBodyParser
use Rack::MethodOverride

 
run ApplicationController
use CatsController
use ListingsController




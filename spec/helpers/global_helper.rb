require 'oop_rails_server'
require 'helpers/rails_helpers'

RSpec.configure do |c|
  c.include ::OopRailsServer::Helpers, type: :rails
  c.include ::Spec::Helpers::RailsHelpers, type: :rails
end

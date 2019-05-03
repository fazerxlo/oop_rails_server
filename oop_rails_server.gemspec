$:.unshift File.expand_path('../lib', __FILE__)
require 'oop_rails_server/version'

Gem::Specification.new do |spec|
  spec.name          = 'oop_rails_server'
  spec.version       = OopRailsServer::VERSION
  spec.authors       = ['Andrew Geweke']
  spec.email         = ['andrew@geweke.org']
  spec.summary       = 'Reliably runs a Rails server in a separate process, for use in tests, utilities, etc.'
  spec.homepage      = 'https://github.com/ageweke/oop_rails_server'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'file-tail'
  spec.add_dependency 'json'
  spec.add_dependency 'rails'

  spec.add_development_dependency 'bundler', '~> 1.17.2'
  spec.add_development_dependency 'rake' # , "~> 10.0"
  spec.add_development_dependency 'rspec'
end

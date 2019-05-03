require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

default_prerequisites = [:spec]
if defined?(RUBY_ENGINE) && RUBY_ENGINE.to_s.strip.downcase == 'jruby'
  default_prerequisites = ['jruby:clean', 'jruby:compile'] + default_prerequisites
else
  default_prerequisites = %i[clobber compile] + default_prerequisites
end

task default: default_prerequisites

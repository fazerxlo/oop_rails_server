class WorkingController < ApplicationController
  def rails_is_working
    engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : nil
    render plain: "Rails version: #{Rails.version}\nRuby version: #{RUBY_VERSION}\nRuby engine: #{engine}\n"
  end
end

class BasicRailsSystemSpecController < ApplicationController
  def trivial_widget
  end

  def the_class_should_not_load
    render :plain => BasicRailsSystemSpec::ClassShouldNotLoad.new.to_s
  end
end

# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def show_flash
    html = ""
    flash.each do |key, value|
      html << content_tag(:div, value, :class => "#{key} fade", :id => "#{key}_flash")
    end
    
    html
  end
  
  def countdown
    wedding = Date.new(2010, 5, 1)
    duration = wedding - DateTime.now
    
    duration.to_i
  end
end

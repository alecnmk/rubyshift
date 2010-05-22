# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def hotspots_to_json(hotspots)
    hotspots.blank? ? "[]" : hotspots.collect{|h| {:address => "", :latitude => h.lat, :longitude => h.lng}}.flatten.to_json
  end
end

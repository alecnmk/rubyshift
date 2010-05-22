class StationsController < ApplicationController
  def index
		@map = GMap.new("map_div_id")	
		@map.control_init(:large_map => true, :map_type => true)
		@map.center_zoom_init( [50.45,30.523333], 13 )

   	@stations = {}
    Station::COLORS.each do |color|
      @stations[color] = Station.by_color(color).all :order => "external_id ASC"
			@icon = GIcon.new( :image => "/images/#{color}.png", :icon_anchor => GPoint.new(15,40) )
			@stations[color].each do |station|
			  marker = GMarker.new([ station.lat, station.lng ], :title => station.name , :icon => @icon)
				@map.overlay_init(marker)
			end
	
    end

  end

end

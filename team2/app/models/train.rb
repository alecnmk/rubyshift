class Train < ActiveRecord::Base
  module Status
    START_BASE = "start_base"
    END_BASE   = "end_base"
    START_TO_END = "start_to_end"
    END_TO_START = "end_to_start"
  end
  def self.init_by_stations
    trains = Train.all
    stations = Station.all
    trains.each_with_index do |t, n|
      t.update_attributes(:color => stations[n%3].color,
        :status => cycle(Status::START_BASE, Status::END_BASE))
    end
  end
end

class Station < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :color
  validates_presence_of :lat
  validates_presence_of :lng
  
  def self.people_count_by_time cur_time
    people_count = 2550

    tm = TimeOfDay.new(:time => cur_time)
    case cur_time
    when (TimeOfDay.new(:hour => 6, :min => 0)..TimeOfDay.new(:hour => 7, :min => 0))
      people_count / 3
    when (TimeOfDay.new(:hour => 7, :min => 0)..TimeOfDay.new(:hour => 9, :min => 30))
      people_count * 2
    when (TimeOfDay.new(:hour => 9, :min => 30)..TimeOfDay.new(:hour => 17, :min => 30))
      people_count
    when (TimeOfDay.new(:hour => 17, :min => 30)..TimeOfDay.new(:hour => 19, :min => 0))
      people_count * 2
    when (TimeOfDay.new(:hour => 19, :min => 0)..TimeOfDay.new(:hour => 20, :min => 0))
      people_count
    when (TimeOfDay.new(:hour => 20, :min => 0)..TimeOfDay.new(:hour => 23, :min => 59))
      people_count / 3
    end
  end
  
  def self.wait_minutes_by_time cur_time
    tm = TimeOfDay.new(:time => cur_time)
    case cur_time
    when (TimeOfDay.new(:hour => 6, :min => 0)..TimeOfDay.new(:hour => 7, :min => 0))
      10
    when (TimeOfDay.new(:hour => 7, :min => 0)..TimeOfDay.new(:hour => 9, :min => 30))
      2
    when (TimeOfDay.new(:hour => 9, :min => 30)..TimeOfDay.new(:hour => 17, :min => 30))
      5
    when (TimeOfDay.new(:hour => 17, :min => 30)..TimeOfDay.new(:hour => 19, :min => 0))
      2
    when (TimeOfDay.new(:hour => 19, :min => 0)..TimeOfDay.new(:hour => 20, :min => 0))
      5
    when (TimeOfDay.new(:hour => 20, :min => 0)..TimeOfDay.new(:hour => 23, :min => 59))
      10
    end
  end
  
  def self.trains_count_by_time cur_time
    people_by_train = 150
    people = people_count_by_time cur_time
    trains1 = (1.0 * people / people_by_train / 2).ceil
    minutes = wait_minutes_by_time cur_time
    trains2 = (1.0 * 60 / minutes).ceil
    [trains1, trains2].max
  end

  COLORS = [ "green", "red", "blue" ]

  by_whatever
	
	acts_as_mappable :default_units => :miles,
   :default_formula => :sphere,
   :distance_field_name => :distance,
   :lat_column_name => :lat,
   :lng_column_name => :lng

end

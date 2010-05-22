require 'test_helper'

class StationTest < ActiveSupport::TestCase
  should_validate_presence_of :name
  should_validate_presence_of :lat
  should_validate_presence_of :lng
  should_validate_presence_of :color
  
  context "people_count_by_time" do
    {
      [6, 30]   => 2550 / 3,
      [8, 0]    => 2550 * 2,
      [12, 0]   => 2550,
      [18, 0]   => 2550 * 2,
      [19, 12]  => 2550,
      [21, 0]   => 2550 / 3,
    }.each do |k, v|
      should "return #{v} for #{k[0]}:#{k[1]}" do
        tm = TimeOfDay.new :hour => k[0], :min => k[1]
        assert_equal v, Station.people_count_by_time(tm)
      end
    end
  end
  
  context "wait_minutes_by_time" do
    {
      [6, 30]   => 10,
      [8, 0]    => 2,
      [12, 0]   => 5,
      [18, 0]   => 2,
      [19, 12]  => 5,
      [21, 0]   => 10,
    }.each do |k, v|
      should "return #{v} for #{k[0]}:#{k[1]}" do
        tm = TimeOfDay.new :hour => k[0], :min => k[1]
        assert_equal v, Station.wait_minutes_by_time(tm)
      end
    end
  end
  
  context "trains_count_by_time" do
    {
      [12, 30]   => 12,
    }.each do |k, v|
      should "return #{v} for #{k[0]}:#{k[1]}" do
        tm = TimeOfDay.new :hour => k[0], :min => k[1]
        assert_equal v, Station.trains_count_by_time(tm)
      end
    end
  end
end

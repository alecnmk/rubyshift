class TimeOfDay
  attr_reader :hour, :min
  def initialize(options = {})
    if options.has_key? :hour
      @hour = options[:hour]
      @min = options[:min]
    else
      time = options[:time] || Time.now
      @hour, @min = time.hour, time.min
    end
  end
  def to_s
    "#{@hour}:#{@min}"
  end
  def <=>(tm)
    self.hour > tm.hour ? 1 : (self.hour < tm.hour) ? -1 : self.min > tm.min ? 1 : (self.min < tm.min) ? -1 : 0
  end
end

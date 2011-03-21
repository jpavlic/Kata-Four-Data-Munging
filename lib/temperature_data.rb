class TemperatureData
  def initialize
    @daily_data = {}
  end

  def get_day_with_smallest_change
    hash = @daily_data.sort{|a,b| a[1]<=>b[1]}[0]
    TemperatureDay.new(hash[0], hash[1])
  end

  def add_day(day,change)
    @daily_data[day] = change
  end
end


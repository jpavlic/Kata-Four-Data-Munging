class TemperatureDay
  attr_reader :day_number, :change
  def initialize(day,change)
    @day_number = day
    @change = change
  end
end
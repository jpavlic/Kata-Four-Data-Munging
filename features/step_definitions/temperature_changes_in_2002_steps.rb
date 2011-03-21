Given /^I have all the temperatures in 2002 by day$/ do
  weather_file = File.open('weather.dat')
  lines = weather_file.read.split("\n")

  lines[8..37].each do |line|
    daily_data = line.scan(/\w+/)
    day_of_month = daily_data[0]
    high_temp = daily_data[1].gsub('*', '')
    low_temp = daily_data[2].gsub('*', '')
    @temperature_data.add_day(day_of_month,(high_temp.to_i-low_temp.to_i))
  end
end

Given /^I can store temperature changes$/ do
  @temperature_data = TemperatureData.new
end
Then /^I can see the day with the smallest temperature change is "([^\"]*)" and the change is (\d+)$/ do |day, change|
  @temperature_data.get_day_with_smallest_change().day_number.should == day
  @temperature_data.get_day_with_smallest_change().change.should == change.to_i
end
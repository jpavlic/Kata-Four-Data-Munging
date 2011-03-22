Given /^I can store points spread$/ do
  @soccer_data = SoccerData.new
end

Given /^I have all the teams$/ do
  file = File.open('football.dat')

  lines = file.read.split("\n")

  lines[5..25].each do |line|
    daily_data = line.strip.scan(/\w+/)
    @soccer_data.add_team(daily_data[1],(daily_data[6].to_i-daily_data[7].to_i).abs) unless daily_data.size == 0
  end
end

Then /^I can see "([^\"]*)" has a spread of (\d+)$/ do |team, spread|
  @soccer_data.get_team_with_smallest_spread().team.should == team
  @soccer_data.get_team_with_smallest_spread().spread.should == spread.to_i
end
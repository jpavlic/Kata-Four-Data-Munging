class SoccerData
def initialize
    @team_data = {}
  end

  def add_team(team,spread)
    @team_data[team] = spread
  end

  def get_team_with_smallest_spread
    puts @team_data.inspect
    hash = @team_data.sort{|a,b| a[1]<=>b[1]}[0]
    SoccerTeam.new(hash[0], hash[1])
  end
end
class SoccerTeam
  attr_reader :team, :spread
  def initialize(team,spread)
    @team = team
    @spread = spread
  end
end
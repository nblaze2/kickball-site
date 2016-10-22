require_relative "./team_data"

class Team
  attr_reader :team_name, :teams_all

  def initialize(team_name)
    @team_name = team_name
  end

  def all
    @teams_all = []
    @league_data = TeamData::ROLL_CALL
    @league_data.each_key do |team_name|
      @teams_all << Team.new(team_name)
    end
    @teams_all
  end

  def players

  end
end

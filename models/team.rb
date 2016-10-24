require_relative "./team_data"

class Team
  attr_reader :team_name, :teams_all

  def initialize(team_name)
    @team_name = team_name
  end

  def self.all
    @teams_all = []
    @league_data = TeamData::ROLL_CALL
    @league_data.each_key do |team_name|
      @teams_all << Team.new(team_name)
    end
    @teams_all
    binding.pry
  end

  def players
    @players_by_team = []
    @league_data = TeamData::ROLL_CALL
    @league_data[team_name.to_sym].each_pair do |position, name|
      @players_by_team << Player.new(name, position, team_name)
    end
    @players_by_team
  end
end

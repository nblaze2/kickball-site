require_relative "./team_data"

class Player
  attr_reader :name, :position, :team, :players_all

  def initialize(name, position, team)
    @name = name
    @position = position
    @team = team
  end

  def self.all
    @players_all = []
    @league_data = TeamData::ROLL_CALL
    @league_data.each_pair do |team_name, roster|
      roster.each_pair do |position, name|
        @players_all << Player.new(name, position, team_name)
      end
    end
    @players_all
  end
end

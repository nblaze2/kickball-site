require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data.rb"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/LACKP" do
  erb :lackp
end

get "/LACKP/teams" do
  @teams = ["Simpson Slammers", "Jetson Jets", "Flintstone Fire", "Griffin Goats"]
  erb :teams
end

get "/LACKP/teams/:team_name" do
  @team_name = params[:team_name]
  @team_data = TeamData::ROLL_CALL[@team_name.to_sym]
  erb :team_page
end

get "/LACKP/positions" do
  @positions = TeamData::ROLL_CALL.values[0].keys
  erb :positions
end

get "/LACKP/positions/:position" do
  @position = params[:position]
  @whole_league = TeamData::ROLL_CALL
  @players_by_position = {}

  @whole_league.each_pair do |team, roster|
    @players_by_position[roster[@position.to_sym]] = team
  end

  erb :position_page
end

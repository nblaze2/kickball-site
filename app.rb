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

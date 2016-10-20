require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data.rb"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/LACKP" do
  "<h1>The LACKP Homepage<h1>"
  erb :lackp
end

get "/teams" do
  @teams = ["Simpson Slammers", "Jetson Jets", "Flintstone Fire", "Griffin Goats"]
  erb :teams
end

get "/LACKP/:team_name" do
  @team_name = params[:team_name]
  erb :team_page
end

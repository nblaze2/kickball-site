require "rspec"
require "capybara"
require "capybara/rspec"
require_relative "../models/player"
require_relative "../models/team"
require_relative "../models/team_data.rb"
require_relative "../app"

Capybara.app = Sinatra::Application

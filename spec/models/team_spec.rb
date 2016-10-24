require "spec_helper"

RSpec.describe Team do
  let(:team) {Team.new("Simpson Slammers")}
  it "takes a name, position and team as arguments" do
    expect(team).to be_a(Team)
  end

  describe "#team_name" do
    it "has a reader for team_name" do
      expect(team.team_name).to eq("Simpson Slammers")
    end

    it "does not have a writer for team_name" do
      expect { team.team_name = "Springfield Isotopes" }.to raise_error(NoMethodError)
    end
  end

  describe "#all" do
    it "returns an array of all the player objects" do
      expect(Team.all).to be_a(Array)
      expect(Team.all.first).to be_a(Team)
    end
  end

  describe "#players" do
    it "returns an array of all the players on the team" do
      expect(team.players).to be_a(Array)
      expect(team.players.first).to be_a(Player)
      expect(team.players.first.name).to eq("Bart Simpson")
    end
  end
end

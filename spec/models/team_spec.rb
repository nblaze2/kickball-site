require "spec_helper"

RSpec.describe Team do
  let(:team) {Team.new("Springfield Isotopes")}


  describe "#all" do
    it "returns an array of all the player objects" do
      expect(team.all).to be_a(Array)
      expect(team.all.first).to be_a(Team)
    end
  end
end

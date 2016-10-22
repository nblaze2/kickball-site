require "spec_helper"

RSpec.describe Player do
  let(:player) {Player.new("Darryl Strawberry", "Right Field", "Springfield Isotopes")}
  it "takes a name, position and team as arguments" do
    expect(player).to be_a(Player)
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("Darryl Strawberry")
    end

    it "does not have a writer for name" do
      expect { player.name = "Mookie Betts" }.to raise_error(NoMethodError)
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player.position).to eq("Right Field")
    end

    it "does not have a writer for position" do
      expect { player.position = "Quarterback" }.to raise_error(NoMethodError)
    end
  end

  describe "#team" do
    it "has a reader for team" do
      expect(player.team).to eq("Springfield Isotopes")
    end

    it "does not have a writer for team" do
      expect { player.team = "Celtics" }.to raise_error(NoMethodError)
    end
  end

  describe "#all" do
    it "returns an array of all the player objects" do
      expect(player.all).to be_a(Array)
      expect(player.all.first).to be_a(Player)
    end
  end
end

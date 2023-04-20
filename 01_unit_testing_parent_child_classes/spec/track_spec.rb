require 'track'

RSpec.describe Track do
    it "returns true if track includes given keywords" do
        track = Track.new("Beyonce", "Halo")
        expect(track.matches?("Beyonce")).to eq true
    end
end
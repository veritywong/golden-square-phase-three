require 'music_library'
require 'track'

RSpec.describe "music library and track integration" do

    it "returns added tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("Beyonce", "Halo")
        track_2 = Track.new("Joni Mitchell", "California")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it "returns tracks according to keywords" do
        music_library = MusicLibrary.new
        track_1 = Track.new("Beyonce", "Halo")
        track_2 = Track.new("Joni Mitchell", "California")
        music_library.add(track_1)
        music_library.add(track_2)
        searched_track = music_library.search("Beyonce")
        expect(searched_track).to eq track_1
    end
end
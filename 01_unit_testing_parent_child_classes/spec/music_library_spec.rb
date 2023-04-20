require 'music_library'

RSpec.describe MusicLibrary do

    context "when new instance created" do
        it "creates an empty list" do
            music_library = MusicLibrary.new
            expect(music_library.all).to eq []
        end
    end

    
    describe "mocking tests" do
        it "returns added tracks" do
            music_library = MusicLibrary.new
            track_1 = double :track
            music_library.add(track_1)
            expect(music_library.all).to eq [track_1]
        end

        it "returns tracks according to keywords" do
            music_library = MusicLibrary.new
            track_1 = double :track
            expect(track_1).to receive(:matches?).with("Beyonce").and_return(true)
            track_2 = double :track
            expect(track_2).to receive(:matches?).with("Beyonce").and_return(false)
            music_library.add(track_1)
            music_library.add(track_2)
            searched_track = music_library.search("Beyonce")
            expect(searched_track).to eq [track_1]
        end
    end

end




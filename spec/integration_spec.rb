require "music_library"
require "track"

# testing the integration of 2 classes working together
# AN INTEGRATION TEST

RSpec.describe "integration" do

    context "when we add tracks to the library" do

        it "comes back in the list" do
            music_library = MusicLibrary.new
            track_1 = Track.new("9 to 5", "Dolly Parton")
            track_2 = Track.new("Colourblind", "Counting Crows")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1, track_2]
        end
    
    end

    context "with some tracks added" do
        it "searches for those tracks by full title" do
            music_library = MusicLibrary.new
            track_1 = Track.new("9 to 5", "Dolly Parton")
            track_2 = Track.new("Colourblind", "Counting Crows")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("Colourblind")
            expect(result).to eq [track_2]
        end

        it "searches for those tracks by partial title" do
            music_library = MusicLibrary.new
            track_1 = Track.new("9 to 5", "Dolly Parton")
            track_2 = Track.new("Colourblind", "Counting Crows")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("blind")
            expect(result).to eq [track_2]
        end

        context "when there are no tracks matching" do
            it "yields an empty list when searching" do
                music_library = MusicLibrary.new
                track_1 = Track.new("9 to 5", "Dolly Parton")
                music_library.add(track_1)
                result = music_library.search_by_title("love")
                expect(result).to eq []
            end
        end
    end

end
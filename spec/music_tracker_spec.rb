require "music_tracker"

RSpec.describe Musictracker do
    # 1)
    it "returns a message saying no tracks in list if no tracks have been added" do
        music_tracker = Musictracker.new
        expect(music_tracker.list_tracks).to eq "There are no tracks in your list."
    end
    # 2)
    it "returns list containing the one song added" do
        music_tracker = Musictracker.new
        music_tracker.add("Round Here")
        expect(music_tracker.list_tracks).to eq "Track List: Round Here"
    end
    # 3)
    it "returns a list contains 2 tracks when 2 tracks added" do
        music_tracker = Musictracker.new
        music_tracker.add("Round Here")
        music_tracker.add("Colourblind")
        expect(music_tracker.list_tracks).to eq "Track List: Round Here, Colourblind"
    end
    #4)
    it "returns a list of only unique tracker when same track is added twice" do
        music_tracker = Musictracker.new
        music_tracker.add("Round Here")
        music_tracker.add("Round Here")
        expect(music_tracker.list_tracks).to eq "Track List: Round Here"
    end
end
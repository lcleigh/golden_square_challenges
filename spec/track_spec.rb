require "track"

RSpec.describe Track do
    it "constructs" do
        track = Track.new("9 to 5", "Dolly Parton")
        expect(track.title).to eq "9 to 5"
        expect(track.artist).to eq "Dolly Parton"
    end

    describe "#format" do
        it "formats the title and artist into a single string" do
            track = Track.new("2 Become 1", "Spice Girls")
            expect(track.format).to eq "2 Become 1 by Spice Girls"
        end
    end
end
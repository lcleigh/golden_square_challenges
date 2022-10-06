require "encode_decode"

RSpec.describe "encode_decode method" do
    
    it "returns correct output when encoding message" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end

    it "rturns correct output when decoding message" do
        result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end



end
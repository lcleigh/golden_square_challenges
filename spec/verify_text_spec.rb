require "verify_text"

RSpec.describe "verify_text method" do

    it "takes an empty string and returns a message saying there is no text to check" do
        result = verify_text("")
        expect(result).to eq "There is no text to check."
    end

    it "takes a string with cap letter at beginning and punc at end and returns a message saying the sentence is great" do
        result = verify_text("The Cat sat on the mat!") 
        expect(result).to eq "This sentence is great."
    end

    it "checks whether string is capitalized with correct punctuation" do
        result = verify_text("the Cat sat on the mat!") 
        expect(result).to eq "This sentence needs capitilization!"
    end

    it "checks whether string is punctuated with correct capitalisation" do
        result = verify_text("The Cat sat on the mat") 
        expect(result).to eq "This sentence needs punctuation!"
    end
    it "gives expected output when no capitalization or punctuation" do
        result = verify_text("the Cat sat on the mat") 
        expect(result).to eq "This needs capitalization and punctuating!"
    end
end
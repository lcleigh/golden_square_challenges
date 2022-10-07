require "GrammarStats"

RSpec.describe GrammarStats do
    
    it "returns there is no text to check when and empty string is the input" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("")
        expect(grammar_stats.check("")).to eq "There is no text to check!"
    end


    it "returns 100 due to one out of one sentance passing the check" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Laura sat on the mat!")
        expect(grammar_stats.percentage_good).to eq 100
    end

    it "returns 0 due to one out of one sentance failing the check" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("laura sat on the mat!")
        expect(grammar_stats.percentage_good).to eq 0
    end

    it "returns 50 due to one out of teo sentance passing the check" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Laura is cool!")
        grammar_stats.check("laura is fun")
        expect(grammar_stats.percentage_good).to eq 50
    end

    it "returns 67 due to two out of three sentance passing the check" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Laura is cool!")
        grammar_stats.check("Laura is lovely!")
        grammar_stats.check("laura is fun")
        expect(grammar_stats.percentage_good).to eq 67
    end




end
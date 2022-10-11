require "diary_entry_2"

RSpec.describe DiaryEntry2 do

    context "diary entries are added" do
        it "returns the title of an entry as a string" do
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            diary_entry_2 = DiaryEntry2.new("Weather", "It is raining.")
            expect(diary_entry_1.title).to eq "Breakfast"
            expect(diary_entry_2.title).to eq "Weather"
        end

        it "returns the contents of an entry as a string" do
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            diary_entry_2 = DiaryEntry2.new("Weather", "It is raining.")
            expect(diary_entry_1.contents).to eq "I had scrambled eggs and it was yummy."
            expect(diary_entry_2.contents).to eq "It is raining."
        end

        it "counts the number of words in the contents" do
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            expect(diary_entry_1.count_words).to eq 8
        end
        
    end

    it "returns the reading time of content given a wpm" do
        diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
        diary_entry_1.count_words
        expect(diary_entry_1.reading_time(2)).to eq 4 
    end
end
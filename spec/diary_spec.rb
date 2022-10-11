require "diary"

RSpec.describe Diary do
    context 'when no entries are added' do
        it "returns an empty list" do
            diary = Diary.new
            expect(diary.all).to eq []
        end
        it "gives a word count of 0" do
            diary = Diary.new
            expect(diary.count_words).to eq 0
        end
        it "returns a message saying the reading time cannot be calculated" do
            diary = Diary.new
            expect(diary.reading_time(3)).to eq "You have nothing to read."
        end
        it "has no best entry" do
            diary = Diary.new
            expect(diary.find_best_entry_for_reading_time(2, 2)).to eq nil
        end
    end
    
    
    
end
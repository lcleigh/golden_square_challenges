require "diary"
require "diary_entry_2"

RSpec.describe "diaryintegration" do
    context "when we create a diary entry" do
        it "adds the entry to the library" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            diary_entry_2 = DiaryEntry2.new("Weather", "It is raining.")
            diary.add(diary_entry_1)  
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end

    context "with some entries added" do

        it "counts the words in all the diary entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            diary_entry_2 = DiaryEntry2.new("Weather", "It is raining.")
            diary.add(diary_entry_1)  
            diary.add(diary_entry_2)
            diary_entry_1.count_words
            diary_entry_2.count_words
            expect(diary.count_words).to eq 11
        end

        it "returns estimate of reading time rounded to nearest integer of all entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
            diary_entry_2 = DiaryEntry2.new("Weather", "It is raining.")
            diary.add(diary_entry_1)  
            diary.add(diary_entry_2)
            diary_entry_1.count_words
            diary_entry_2.count_words
            diary.count_words
            expect(diary.reading_time(2)).to eq 6
        end

        # it "returns the longest entry the user could read in this time" do
        #     diary = Diary.new
        #     diary_entry_1 = DiaryEntry2.new("Hello", "one two")
        #     diary_entry_2 = DiaryEntry2.new("Good Day", "one two three four")
        #     diary_entry_3 = DiaryEntry2.new("Bye", "one two three four five sixe seven eight")
        #     diary.add(diary_entry_1)
        #     diary.add(diary_entry_2)
        #     diary.add(diary_entry_3)
        #     result = diary.find_best_entry_for_reading_time(2, 2)
        #     expect(result).to eq diary_entry_2
        # end

        context "returns the best entry given a set amount of minutes ad wpm" do
            it "returns the one entry as it is readable in the time" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy.")
                diary.add(diary_entry_1)  
                diary_entry_1.count_words
                result = diary.find_best_entry_for_reading_time(2, 5)
                expect(result).to eq diary_entry_1
            end

            it "there is one entry but it is not readable in the time" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry2.new("Breakfast", "I had scrambled eggs and it was yummy so I had lots and lots more.")
                diary.add(diary_entry_1)  
                diary_entry_1.count_words
                result = diary.find_best_entry_for_reading_time(2, 5)
                expect(result).to eq nil
            end
        end
    end
    
end
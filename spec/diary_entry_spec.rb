require "diary_entry"

RSpec.describe DiaryEntry do

    it "returns a string with the correct chunk of the contents" do
        diary_entry = DiaryEntry.new("Hello", "the big cat sat on the mat with a big dog next to it")
        diary_entry.contents
        diary_entry.count_words
        diary_entry.reading_time(2)
        result = diary_entry.reading_chunk(2, 3)
        expect(result).to eq "the big cat sat on the"
    end

    it "returns a string with the NEXT correct chunk of the contents" do
        diary_entry = DiaryEntry.new("Hello", "the big cat sat on the mat with a big dog next to it")
        diary_entry.contents
        diary_entry.count_words
        diary_entry.reading_time(2)
        result = diary_entry.reading_chunk(2, 3)
        result = diary_entry.reading_chunk(2, 3)
        expect(result).to eq "mat with a big dog next"
    end

    it "reestarts after reading all the contents" do
        diary_entry = DiaryEntry.new("Hello", "the big cat sat on the mat with a big dog next to it")
        diary_entry.contents
        diary_entry.count_words
        diary_entry.reading_time(2)
        result = diary_entry.reading_chunk(2, 3)
        result = diary_entry.reading_chunk(2, 3)
        result = diary_entry.reading_chunk(2, 3)
        expect(result).to eq "to it the big cat sat"
    end

end
class Diary
    def initialize
        @entry_list = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
        @entry_list << entry
    end
  
    def all
        return @entry_list
    end
  
    def count_words
        @word_sum = @entry_list.sum(&:count_words)
        return @word_sum
          
    end
  
    def reading_time(wpm)

        if @entry_list.length == 0
            return "You have nothing to read."
        else
            return (@word_sum.to_f / wpm).round
        end
        
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        time_available = wpm * minutes
        readable_entries = @entry_list.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
        sorted_by_longest = readable_entries.sort_by do |entry| 
            entry.count_words
        end
        sorted_by_longest
        return sorted_by_longest.last
    end
  end

  diary = Diary.new
  diary_entry_1 = DiaryEntry2.new("Hello", "one two")
  diary_entry_2 = DiaryEntry2.new("Good Day", "one two three four")
  diary_entry_3 = DiaryEntry2.new("Bye", "one two three four five sixe seven eight")
  diary.all

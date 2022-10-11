class DiaryEntry2
    def initialize(title, contents) # title, contents are strings
        @title = title
        @contents = contents
    end
  
    def title
        return @title
    end
  
    def contents
        return @contents
    end
  
    def count_words
        contents_list = @contents.split(/[ !?,.]/)
        @word_count = contents_list.length
        return @word_count
    end
  
    def reading_time(wpm) 
        if @word_count == 0
            return "ERROR! You have not words to read."
        else
            return @word_count / wpm
        end
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end

#   diary_entry = DiaryEntry2.new("Hello", "word word word word word word")
#   diary_entry.count_words
#   diary_entry.reading_time(2)
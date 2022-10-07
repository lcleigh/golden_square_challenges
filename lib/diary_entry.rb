class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        
    end
   
    def contents
        # Returns the contents as a string
        @contents_list = @contents.split(/[ !?,.]/)
        return @contents_list
    end
    
    def count_words
        # Returns the number of words in the contents as an integer
        @word_count = @contents_list.count
    end
    
    def reading_time(wpm) # wpm is an integer representing the number of words the
                            # user can read per minute
        # Returns an integer representing an estimate of the reading time in minutes
        # for the contents at the given wpm.
        @word_count / wpm
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
        contents_list_2 = @contents_list
        words_read = wpm * minutes
        chunk = @contents_list.slice!(0..(words_read-1)).join(" ")
        chunk_length = chunk.split(" ").length
        
        if chunk_length == 6
            return chunk
        else
            
            return chunk + " " + @contents.split(/[ !?,.]/).slice!(0..(5 - chunk_length)).join(" ")
        end

    end

end

new_entry = DiaryEntry.new("Hello", "the big cat sat on the mat with a big dog next to it")
"array of words: #{new_entry.contents}"
"word count: #{new_entry.count_words}"
"reading time: #{new_entry.reading_time(2)}"
 "chunk 1: #{new_entry.reading_chunk(2, 3)}"
 "chunk 2: #{new_entry.reading_chunk(2, 3)}"
 "chunk 3: #{new_entry.reading_chunk(2, 3)}"
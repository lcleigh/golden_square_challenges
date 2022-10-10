class Musictracker
    def initialize
        @track_list = []
    end

    def add(track) #track is a string - title of a song
        @track_list << track

    end

    def list_tracks
        track_list_string = @track_list.uniq.join(", ")
        if @track_list.length == 0
            return "There are no tracks in your list."
        else
            return "Track List: #{track_list_string}"
        end
    end

end
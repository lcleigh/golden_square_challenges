class PhoneBook
    def initialize
        @numbers = []

    end

    def extract_numbers(text)
        text.scan(/[0-9]{11}/).each do |number|
            @numbers << number
            

        end
    end

    def list
    return @numbers.uniq
    end    

end


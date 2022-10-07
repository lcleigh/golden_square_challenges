class GrammarStats

    def initialize
      @checked = 0
      @passed = 0
    end
  
    def check(text)
        punctuation_req = /[!.?]/     

        if text == ""
            return "There is no text to check!"

        elsif text[0] == text[0].upcase && text[-1] =~ punctuation_req
            @checked += 1
            @passed += 1
            return true
        else
            @checked += 1
        
        end
    
    end
  
    def percentage_good
        @passed
        @checked
        percentage = ((@passed.to_f/ @checked) * 100).round
        return percentage
        
    
    end
end

checks = GrammarStats.new
checks.check("hello")
checks.check("Hello!")
checks.percentage_good


# check method =>
  # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.

# percentage_good method =>
 # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
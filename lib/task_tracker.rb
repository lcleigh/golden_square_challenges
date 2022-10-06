def task_tracker(text)
    if text == ""
        return "No text given."
    elsif text.include?("#TODO")
        return "This text contains a #TODO item." 
    elsif text.include?("#todo")
        return "This text contains a #TODO item." 
    else
        return "This text does not contain a #TODO item." 
    end
end
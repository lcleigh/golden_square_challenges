require "task_tracker"

RSpec.describe "task_tracker method" do

    it "for an empty string it returns the message no text is given" do
        result = task_tracker("")
        expect(result).to eq "No text given."
    end

    it "for a string not including a #TODO item it returns the correct message" do
        result = task_tracker("hello my name is Fred")
        expect(result).to eq "This text does not contain a #TODO item." 
    end

    it "for a string including a #TODO item it returns the correct message" do
        result = task_tracker("hello #TODO clean the house")
        expect(result).to eq "This text contains a #TODO item." 
    end
    
    it "for a string including a #todo item it returns the correct message" do
        result = task_tracker("hello #todo wash the dishes")
        expect(result).to eq "This text contains a #TODO item." 
    end
end
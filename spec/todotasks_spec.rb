require "todotasks"

RSpec.describe Todotasks do
    
    # 1)
    it "returns an empty list message if not tasks are added" do
        todotasks = Todotasks.new
        expect(todotasks.list_tasks).to eq "You have no tasks."
    end

    # 2)
    it "returns a singe task in the list when a task is added" do
        todotasks = Todotasks.new
        todotasks.add_task("hoover")
        expect(todotasks.list_tasks).to eq "To Do: hoover"
    end

    # 3)
    it "returns a list of 2 tasks when 2 tasks are added" do
        todotasks = Todotasks.new
        todotasks.add_task("hoover")
        todotasks.add_task("wash up")
        expect(todotasks.list_tasks).to eq "To Do: hoover, wash up"
    end

    # 4)
    it "returns correct list when2 tasks are added and one is removed" do
        todotasks = Todotasks.new
        todotasks.add_task("hoover")
        todotasks.add_task("wash up")
        todotasks.complete_task("hoover")
        expect(todotasks.list_tasks).to eq "To Do: wash up"
    end

    # 5)
    it "does not add duplictes to the list" do
        todotasks = Todotasks.new
        todotasks.add_task("hoover")
        todotasks.add_task("hoover")
        todotasks.add_task("wash up")
        expect(todotasks.list_tasks).to eq "To Do: hoover, wash up"
    end

    # 6)
    it "returns a message saying no tasks when 2 tasks are added and both completed" do
        todotasks = Todotasks.new
        todotasks.add_task("hoover")
        todotasks.add_task("wash up")
        todotasks.complete_task("hoover")
        todotasks.complete_task("wash up")
        expect(todotasks.list_tasks).to eq "You have no tasks."
    end

    # 7)
    it "returns a message saying the task is no on list when asked to complete a task not added to list" do
        todotasks = Todotasks.new
        todotasks.add_task("dusting")
        expect(todotasks.complete_task("clean")).to eq "This task is not on your list."
    end

   
end
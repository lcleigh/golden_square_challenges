require "todo"

RSpec.describe Todo do

    it "returns the task as a string" do
        todo_task = Todo.new("wash the car")
        expect(todo_task.task).to eq "wash the car"
    end

    it "marks the task as done" do
        todo_task = Todo.new("wash the car")
        expect(todo_task.mark_done!).to eq true
    end

    it "returns true because the task is done" do
        todo_task = Todo.new("wash the car")
        expect(todo_task.done?).to eq false
        todo_task.mark_done!
        expect(todo_task.done?).to eq true
    end

end
require "todo_list"

RSpec.describe TodoList do

    context "initially" do
        it "the incomplete list is empty" do
            todolist = TodoList.new
            expect(todolist.incomplete).to eq []
        end

        it "the complete list in empty" do
            todolist = TodoList.new
            expect(todolist.complete).to eq []
        end

        it "responds to marking all todos as complete with a message" do
            todolist = TodoList.new
            expect(todolist.give_up!).to eq "You have not added anything to your todo list."
        end
    end

end
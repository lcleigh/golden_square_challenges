require "todo_list"
require "todo"

RSpec.describe "todo_integration" do
     
    it "adds a single task to the list" do
        todolist = TodoList.new
        todo = Todo.new("wash dishes")
        expect(todolist.add(todo)).to eq [todo]
    end

    context "add a few tasks to the list and do not mark any as done" do

        it "returns a list of all tasks in incomplete list" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            expect(todolist.incomplete).to eq [todo_1, todo_2]
        end

        it "returns an empty complete list" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            expect(todolist.complete).to eq []
        end

        it "returns a list of all tasks in incomplete list" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            expect(todolist.incomplete).to eq [todo_1, todo_2]
        end
    end

    context "add a few tasks to the list and mark some as done" do
        it "returns a list of the tasks not marked as done in incomplete list" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            todo_1.mark_done!
            expect(todolist.incomplete).to eq [todo_2]
        end
        it "returns a list of the tasks marked as done in complete list" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            todo_1.mark_done!
            expect(todolist.complete).to eq [todo_1]
        end

        it "moves everything into completed even if not done" do
            todolist = TodoList.new
            todo_1 = Todo.new("wash dishes")
            todo_2 = Todo.new("hoover")
            todolist.add(todo_1)
            todolist.add(todo_2)
            todo_1.mark_done!
            todolist.give_up!
            expect(todolist.complete).to eq [todo_1, todo_2]
            expect(todolist.incomplete).to eq []
            expect(todo_2.done?).to eq true
        end
    end

end
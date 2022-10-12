class TodoList
    def initialize
        @list_todo = []
        @list_completed = []
    end
  
    def add(todo) # todo is an instance of Todo
        @list_todo << todo
          
    end
  
    def incomplete
        @list_todo.each do|todo|
            if todo.done?
                @list_completed << todo
                @list_todo.delete(todo)
            end
        end
        return @list_todo
    
    end
  
    def complete
        @list_todo.each do|todo|
            if todo.done?
                @list_completed << todo
                @list_todo.delete(todo)
            end
        end
        return @list_completed
    end
  
    def give_up!   # Marks all todos as complete

        if @list_todo.length == 0 && @list_completed.length == 0
            return "You have not added anything to your todo list."
        
        else 
            @list_todo.each do |todo|
            todo.mark_done!
            @list_completed << todo
            end
        end
        @list_todo = []
        
    end
  end
class Todotasks
    
    def initialize
        @tasks_list = []
    end

    def add_task(task)
        @tasks_list << task
        p "tasks = #{@tasks_list}"

    end

    def complete_task

    end

    def list_tasks
        tasks_list_string = @tasks_list.join(", ")
        if @tasks_list.length == 0
            return "You have no tasks."
        else
            return "To Do: #{tasks_list_string}"
        end
    end
   
    
end
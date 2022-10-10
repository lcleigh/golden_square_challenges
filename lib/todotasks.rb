class Todotasks
    
    def initialize
        @tasks_list = []
    end

    def add_task(task)
        @tasks_list << task
        "tasks = #{@tasks_list}"

    end

    def complete_task(task)
        index = @tasks_list.find_index(task)
        if index == nil
            return "This task is not on your list."
        else
            @tasks_list.delete_at(index)
        end
        return @tasks_list
    end

    def list_tasks
        tasks_list_string = @tasks_list.uniq.join(", ")
        if @tasks_list.length == 0
            return "You have no tasks."
        else
            return "To Do: #{tasks_list_string}"
        end
    end
   
    
end

todotasks = Todotasks.new
todotasks.add_task("wash up")
todotasks.add_task("ironing")
todotasks.list_tasks
# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

 > As a user
 > So that I can keep track of my tasks
 > I want a program that I can add to do tasks to and see a list of them
 >
 > As a user
 > So that I can focus on tasks to complete
 > I want to mark tasks as complete and have them disapper from the list


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Todotasks
    
    def initialize
        @tasks = []
    end

    def add_task(task)
    end

    def complete_task(text)
    def

    def list_tasks
    end
    
    
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
1)
todotasks = Todotasks.new
todotasks.list_tasks("")   => "You have no tasks."

2)
todotasks = Todotasks.new
todotasks.add_task("hoover")
todotasks.list_tasks   => "To Do: hoover"

3) 
todotasks = Todotasks.new
todotasks.add_task("hoover")
todotasks.add_task("wash up")
todotasks.list_tasks   => "To Do: hoover, wash up"

4) 
todotasks = Todotasks.new
todotasks.add_task("hoover")
todotasks.add_task("wash up")
todotasks.complete_task("hoover")
todotasks.list_tasks   => "To Do: wash up"

5)
todotasks = Todotasks.new
todotasks.add_task("hoover")
todotasks.add_task("hoover")
todotasks.add_task("wash up")
todotasks.list_tasks   => "To Do: hoover, wash up"

6)
todotasks = Todotasks.new
todotasks.add_task("hoover")
todotasks.add_task("wash up")
todotasks.complete_task("hoover")
todotasks.complete_task("wash up")
todotasks.list_tasks   => "You have no tasks."

7)
todotasks = Todotasks.new
todotasks.add_task("dusting")
todotasks.complete_task("clean") => "This task is not on your list."


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
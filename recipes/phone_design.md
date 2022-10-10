# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

 > As a user
 > So that I can keep track of my phone numbers
 > I want to keep a record of all phone numbers I use in my entries

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class PhoneBook
    
    def inilialize
        # ...
    end

    def extract_numbers(text) #text is a string representing a journal entry
        # returns nothing
    end

    def list
        #returns a list of phone numbers
    end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
1) 
phone_book = PhoneBook.new
phone_book.list   => []

2)
phone_book = PhoneBook.new
phone_book.extract_numbers("07463645378")
phone_book.list    => ["07463645378"]

3)
phone_book = PhoneBook.new
phone_book.extract_numbers("my friend's phone number is 07412322222")
phone_book.list    => ["07412322222"]

4)
phone_book = PhoneBook.new
phone_book.extract_numbers("my faves: 07412322222, 0745366666666")
phone_book.list    => ["07412322222", "0745366666666"]

5)
phone_book = PhoneBook.new
phone_book.extract_numbers("my faves:")
phone_book.list    => []

6)
phone_book = PhoneBook.new
phone_book.extract_numbers("my friend Sarah: 07453333333")
phone_book.extract_numbers("my friend Jane: 07451111111")
phone_book.list    => ["07453333333", "07451111111"]

7) - too few digits
phone_book = PhoneBook.new
phone_book.extract_numbers("my friend Sarah: 0745333333")
phone_book.list    => []

8)  - no duplicates
phone_book = PhoneBook.new
phone_book.extract_numbers("my friend Sarah: 07453333333")
phone_book.extract_numbers("my friend Sarah: 07453333333")
phone_book.list    => ["07453333333"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
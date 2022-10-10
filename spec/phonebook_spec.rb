require "phonebook"

RSpec.describe PhoneBook do
    # 1)
    it "returns an emty list if no phone number is given" do
        phone_book = PhoneBook.new
        expect(phone_book.list).to eq []
    end
    # 2)
    it "returns a list of one phone number, given one" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("07463645378")
        expect(phone_book.list).to eq ["07463645378"]
    end
    # 3)
    it "finds a phone number ina string with words and adds it to a list" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my friend's phone number is 07412322222")
        expect(phone_book.list).to eq ["07412322222"]
    end
    # 4)
    it "finds more than one phone number in a string with words and adds them to the list" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my faves: 07412322222, 07453666666")
        expect(phone_book.list).to eq ["07412322222", "07453666666"]
    end
    # 5)
    it "returns an empty list when text contains no phone number" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my faves:")
        expect(phone_book.list).to eq []
    end
    # 6)
    it "returns a list of numbers when more than one number added a different time" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my friend Sarah: 07453333333")
        phone_book.extract_numbers("my friend Jane: 07451111111")   
        expect(phone_book.list).to eq ["07453333333", "07451111111"]
    end
    # 7)
    it "returns an empty list when a number with too few digits is in the string" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my friend Sarah: 0745333333")   
        expect(phone_book.list).to eq []
    end
    # 8)
    it "only adds a number once if added twice to diary" do
        phone_book = PhoneBook.new
        phone_book.extract_numbers("my friend Sarah: 07453333333")
        phone_book.extract_numbers("my friend Sarah: 07453333333")  
        expect(phone_book.list).to eq ["07453333333"]
    end


end
require "say_hello"

RSpec.describe "say_hello method" do
    it "returns hello kay when the name given is kay" do
        result = say_hello("kay")
        expect(result).to eq "hello kay"
    end
end
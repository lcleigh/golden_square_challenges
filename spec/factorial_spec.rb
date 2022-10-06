require "factorial"

RSpec.describe "factorial method" do

    it "gives and answer of 120 when n = 5" do
    result = factorial(5)
    expect(result).to eq 120
    end

end
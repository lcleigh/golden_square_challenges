def get_most_common_letter(text)
    text.delete!(" ")
    counter = Hash.new(0)
    # "counter is #{counter}"
    text.chars.each do |char|
      counter[char] += 1
    # "counter is now #{counter}"
    end
    # "final count is: #{counter.to_a.sort_by { |k, v| v }}"
        counter.to_a.sort_by { |k, v| v }[-1][0]
end
  
  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
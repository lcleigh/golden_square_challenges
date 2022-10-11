def factorial(n)

    product = 5
    #p "at the start product is #{product}"
    while n > 1
        binding.irb
        #p "loop starts, n is #{n}"
        n -= 1
        #p "subtract 1 from n to get #{n}"
        #p "multiply product (#{product}) by n (#{n})"
        product *= n
        #p "we get product #{product}"
        
    end
    #p "we finally get return product #{n}"
    product
    
end

puts factorial(5)


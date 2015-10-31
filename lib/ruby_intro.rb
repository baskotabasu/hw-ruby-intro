# When done, submit this entire file to the autograder.

# Part 1

 def sum(array)
  array.inject(0, :+)
 end

 def max_2_sum(array)
   sum(array.sort.last(2))
 end

 def sum_to_n? arr, n
  arr.size.zero? ? false : arr.combination(2).any? {|i| i.reduce(:+) == n} 
 end
 
# Part 2

 def hello(name)
  "Hello, #{name}"
 end

 def starts_with_consonant? s
  alphabet = ('a'..'z').to_a - ['a', 'e', 'i', 'o', 'u']
  s.empty? ? false : alphabet.member?(s[0].downcase)
 end
 
 def binary_multiple_of_4?(s)
       int = s.to_i(2)
       matching = /[^0-1]/.match(s)
       (int % 4 == 0 and matching == nil and !s.empty?) ? true : false
 end


# Part 3


class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    '$%0.2f' % @price
  end
end
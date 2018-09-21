# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each {|x| sum += x}
  return sum
end

def max_2_sum array
  return 0 if  array.size < 1 
  return array[0] if array.size < 2
  array.sort!.reverse!
  array[0]+array[1]
end

def sum_to_n? arr, n
  tf = false
  return false if arr.size < 2 
  arr.each_index {|x| arr.drop(x + 1).each{|y| z = arr[x];  tf = true if y+z == n}}
  return tf
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?
  tf = false
  tf = true if s.match(/^[[:alpha:]]/)
  tf = false if s.downcase.start_with?("a","e","i","o","u")
  return tf
end

def binary_multiple_of_4? s
  return false if s.empty?
  return false if !s.delete("0-1").empty?
  num = s.to_i(2)
  (num % 4 == 0) ?  true :  false
end

# Part 3

class BookInStock 
  attr_accessor :isbn, :price  
  def initialize isbn, price
    raise ArgumentError.new("INVALID ISBN OR PRICE <= 0") if price <= 0 || isbn.size == 0
    @isbn = isbn
    @price = price
  end
  def price_as_string 
    return format("$%.2f",@price)
  end

end

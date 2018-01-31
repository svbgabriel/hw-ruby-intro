# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  end

  res = 0

  arr.each { |x| res += x }
  res
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr.first
  end

  arr.sort!
  last = arr.pop
  penultimate = arr.pop
  last + penultimate
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  end

  i = 0
  j = 1

  while i < arr.length
    while j < arr.length
      if arr[i] + arr[j] == n
        return true
      end
      j += 1
    end
    i += 1
    j = i + 1
  end

  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  first = s.chars.first.to_s

  if /^[^aeiou\W]/i.match(first) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if /\A\d+\z/ !~ s
    return false
  end

  if s.to_i(2) % 4 == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize isbn, price
    @isbn = isbn
    @price = price

    raise ArgumentError, 'ISBN is empty' unless !isbn.empty?
    raise ArgumentError, 'Price is invalid' unless price > 0.0
  end

  def price_as_string
    formated_price = "%2.2f" %@price
    "$" + formated_price
  end

  attr_accessor :isbn, :price
end

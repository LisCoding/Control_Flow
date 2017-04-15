# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
   str.chars.select {|char| char == char.upcase}.join("")

end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  middle_str = str.length / 2
  str.length.odd? ? str[middle_str] : str[middle_str-1..middle_str]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  count = 0
  str.chars {|char| count += 1 if VOWELS.include?(char)}
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
(1..num).inject(:*)
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  join_arr = ""
  (0...arr.length).each do |i|
    if  i != arr.length - 1
      join_arr << arr[i] + separator
    else
      join_arr << arr[i]
    end
  end
  join_arr
end
# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  # weird_str = ""
  # (0...str.length).each do |idx|
  #   if idx != 0 && idx.odd?
  #     weird_str << str[idx].upcase
  #   else
  #     weird_str << str[idx]
  #   end
  # end
  # weird_str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split
  words.map {|word| word.length >= 5 ? word = word.reverse : word}.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
 integers = []
 i = 1
 while i <= n
   if i % 3 == 0 && i % 5 == 0
     integers << "fizzbuzz"
   elsif i % 3 == 0
     integers << "fizz"
   elsif i % 5 == 0
     integers << "buzz"
   else
     integers << i
   end
   i += 1
 end
 integers
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num < 2
  i = 2
  while i < num
    return false if num % i == 0
    i += 1
  end
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  factors = []
  i = 1
  while i <= num
    factors << i if num % i == 0
    i += 1
  end
  factors
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  factor_numbers = factors(num)
  factor_numbers.select {|num| prime?(num)}
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  even = arr.select {|num| num.even?}
  odd = arr.select {|num| num.odd?}
  even.length == 1 ? even[0] : odd[0]
end

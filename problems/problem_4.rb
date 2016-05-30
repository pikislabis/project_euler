#!/usr/bin/env ruby

# A palindromic number reads the same both ways. The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindromic?(number)
  number.to_s == number.to_s.reverse
end

max_palindromic = 0

999.downto(100).each do |x|
  x.downto(100).each do |y|
    mult = x * y
    max_palindromic = mult if palindromic?(mult) && mult > max_palindromic
  end
end

puts max_palindromic

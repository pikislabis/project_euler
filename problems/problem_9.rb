#!/usr/bin/env ruby

#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

(1..997).each do |a|
  (a + 1..998).each do |b|
    c = 1000 - (a + b)
    break unless c == [a, b, c].max
    puts a * b * c if a**2 + b**2 == c**2
  end
end

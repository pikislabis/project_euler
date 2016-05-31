#!/usr/bin/env ruby

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

result = 0

Prime.each do |prime|
  break if prime > 2_000_000
  result += prime
end

puts result

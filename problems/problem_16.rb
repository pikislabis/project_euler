#!/usr/bin/env ruby

# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?

exp_res = 2**1000

result = exp_res.to_s.split('').inject(0) { |a, e| a + e.to_i }

puts result

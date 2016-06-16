#!/usr/bin/env ruby

# The following iterative sequence is defined for the set of positive integers:
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def next_number(number)
  if number.even?
    number / 2
  else
    3 * number + 1
  end
end

def chain_size(number)
  number_tmp = number
  chain_count = 0

  while number_tmp > 1
    chain_count += 1
    number_tmp = next_number(number_tmp)
  end

  chain_count
end

i = 999_999
longest_chain_number = i
longest_chain_size = 0

while i >= 1
  chain_size = chain_size(i)
  if chain_size > longest_chain_size
    longest_chain_size = chain_size
    longest_chain_number = i
  end
  i -= 1
end

puts longest_chain_number

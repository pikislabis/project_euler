#!/usr/bin/env ruby

# Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20x20 grid?

# SOLUTION:

# It's neccessary to make 20 moves to the right and 20 moves to the bottom in each route.

# To calculate the differents routes, we can use the permutation with repetitions of 2 elements
# where the first element repeats 20 times and the second element repeats 20 times.

#
# 40!/(20! * 20!) = (40 * 39 * 38 *...* 21)/20!
#
# The operations could be simplified more than above

result = (21..40).inject(1) { |a, e| a * e } / (2..20).inject(1) { |a, e| a * e }

puts result

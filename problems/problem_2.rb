#!/usr/bin/env ruby
sum = 0
element_x1 = 1
element_x2 = 2

while element_x2 < 4_000_000
  sum += element_x2 if element_x2.even?
  element_tmp = element_x2
  element_x2 += element_x1
  element_x1 = element_tmp
end

puts sum

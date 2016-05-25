#!/usr/bin/env ruby

puts (3..1_000).select{ |i| i%3 == 0 || i%5 == 0 }.inject(0){|sum,x| sum + x }

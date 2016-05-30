#!/usr/bin/env ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

def alternative_approach
  factors = (1..20).map(&:prime_division).flatten(1).sort
  primes = {}

  factors.each do |prime, value|
    primes[prime] = value if primes[prime].nil? || value > primes[prime]
  end

  primes.inject(1) { |a, e| a * e[0]**e[1] }
end

puts alternative_approach

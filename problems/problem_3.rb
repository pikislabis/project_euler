#!/usr/bin/env ruby

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

number = 600_851_475_143
divisors = Prime.prime_division(number)
puts divisors.last[0]

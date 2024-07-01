#!/usr/bin/env ruby
require 'bigdecimal'

x = gets.chomp.to_i

deposit = Float(100)
ans = 0

while x > deposit
  deposit *= 1.01
  deposit = deposit.floor(0)
  ans += 1
end

puts ans

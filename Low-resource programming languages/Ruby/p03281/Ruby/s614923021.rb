#!/usr/bin/ruby
#encoding: utf-8

require 'prime'

def getNumofDivisor(n)
  num = 1
  factor = Prime.prime_division(n)
  (0..factor.size-1).each do |i|
    num *= (factor[i][1] + 1)
  end
  return num
end

n = gets.to_i

ans = 0
(1..n).each do |i|
  if i.odd?
    if getNumofDivisor(i) == 8
      ans += 1
    end
  end
end

puts ans

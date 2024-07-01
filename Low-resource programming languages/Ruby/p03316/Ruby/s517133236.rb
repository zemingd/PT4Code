#!/usr/bin/ruby
#encoding: utf-8

def calcDigitSums(nstr)
  ns = nstr.size
  sum = 0
  (0..ns-1).each do |i|
    sum += nstr[i].to_i
  end
  return sum
end

nstr = gets.chomp

if nstr.to_i % calcDigitSums(nstr) == 0
  puts "Yes"
else
  puts "No"
end

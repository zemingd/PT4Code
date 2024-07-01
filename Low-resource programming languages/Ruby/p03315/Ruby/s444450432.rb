#!/usr/bin/ruby
#encoding: utf-8

s = gets.chomp
ans = 0
(0..3).each do |i|
  if s[i] == '+'
    ans += 1
  elsif s[i] == '-'
    ans -= 1
  end
end

puts ans

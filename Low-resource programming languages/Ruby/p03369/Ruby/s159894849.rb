#!/usr/bin/ruby
#encoding: utf-8

s = gets.chomp
num = 0
(0..2).each do |i|
  if s[i] == 'o'
    num += 1
  end
end

puts 700 + num * 100
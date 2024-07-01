#!/usr/bin/ruby
#encoding: utf-8

s = gets.chomp
y,m,d = s.split("/").map(&:to_i)


if y > 2019 then
  puts "TBD"
elsif y == 2019 && m >= 5 then
  puts "TBD"
else
  puts "Heisei"
end

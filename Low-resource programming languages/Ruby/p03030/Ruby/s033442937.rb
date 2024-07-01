#!/usr/bin/env ruby

n = gets.chomp.to_i
shop = []
n.times do |i|
  (s, p) = gets.chomp.split(/ /)
  p = p.to_i
  shop << [s, p, i + 1]
end
shop.sort!{|a, b| a[0]<=>b[0]}

n = shop[0][0]
array = [[]]
shop.each do |s|
#  p s
  if n == s[0]
    array[-1].push([s[1], s[2]])
  else
    array << [[s[1], s[2]]]
  end
  n = s[0]
end
#p array
array.each do |e|
  e.sort!{|a, b|b[0]<=>a[0]}
  e.each do |ee|
    puts ee[1]
  end
end

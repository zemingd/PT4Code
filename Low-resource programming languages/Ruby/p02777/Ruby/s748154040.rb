#!/usr/bin/env ruby

s, t = gets.chomp.split(" ")
a, b  = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp

if s == u
  a -= 1
elsif t == u
  b -= 1
end

puts "#{a} #{b}"
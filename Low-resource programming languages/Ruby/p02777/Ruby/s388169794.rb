# frozen_string_literal: true

s    = gets.strip.split[0]
a, b = gets.strip.split.map(&:to_i)
u    = gets.strip

u == s ? a -= 1 : b -= 1

puts "#{a} #{b}"

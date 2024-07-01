#!/usr/bin/env ruby
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

b = []
c = []
q.times do
  b_i, c_i = gets.chomp.split.map(&:to_i)
  b << b_i
  c << c_i
end

hash = Hash.new(0)
s = a.sum
a.each do |a_i|
  hash[a_i] += 1
end

q.times do |i|
  b_i = b[i]
  c_i = c[i]

  s -= hash[b_i] * b_i
  s += hash[b_i] * c_i
  hash[c_i] += hash[b_i]
  hash[b_i] = 0

  puts s
end

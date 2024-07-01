#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
B = []
C = []
Q.times do |i|
  B[i], C[i] = gets.chomp.split.map(&:to_i)
end

h = Hash.new(0)

A.each do |a|
  h[a] += 1
end

sum = A.sum

0.upto(Q-1) do |i|
  n = h[B[i]]
  sum -= B[i] * n
  sum += C[i] * n
  h[B[i]] = 0
  h[C[i]] += n
  puts sum
end

#!/usr/bin/env ruby
n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)


sum_a = [0]

n.times do |i|
  sum_a.push(sum_a[i] + a[i])
end

sum_b = [0]
m.times do |i|
  sum_b.push(sum_b[i] + b[i])
end

ans = 0
j = m

0.upto(n) do |i|
  break if sum_a[i] > k

  while sum_b[j] + sum_a[i] > k
    j -= 1
  end

  ans = [ans, i + j].max
end

puts ans

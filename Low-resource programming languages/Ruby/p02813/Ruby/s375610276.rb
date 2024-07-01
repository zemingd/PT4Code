# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

a = (1..n).to_a.permutation(n).to_a.sort

pi = -1
qi = -1
a.each_index do |i|
  pi = i if a[i] == p
  qi = i if a[i] == q

  break if pi >= 0 && qi >= 0
end

puts (qi - pi).abs

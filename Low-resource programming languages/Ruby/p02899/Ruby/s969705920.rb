# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

h = {}
0.upto(n - 1) do |i|
  h[a[i]] = i + 1
end

b = []
1.upto(n) do |i|
  b.push h[i]
end
puts b.join(' ')

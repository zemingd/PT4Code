# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
bc = q.times.map { gets.split.map(&:to_i) }

sum = a.sum
h = Hash.new { 0 }
a.each do |e|
  h[e] += 1
end

bc.each do |e|
  b = e[0]
  c = e[1]
  x = h[b]
  y = h[c]
  diff = (c - b) * h[b]
  h[b] = 0
  h[c] += x
  sum += diff
  puts sum
end

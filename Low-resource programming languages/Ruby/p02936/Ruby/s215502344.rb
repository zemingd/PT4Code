# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
ab = (n - 1).times.map { gets.split.map(&:to_i) }.sort_by { |e| e[0] }
px = q.times.map { gets.split.map(&:to_i) }

s = Array.new(n) { 0 }

px.each do |e|
  p = e[0]
  x = e[1]
  s[p - 1] += x
end

ab.each do |e|
  a = e[0]
  b = e[1]
  s[b - 1] += s[a - 1]
end

puts s

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

d = Array.new(n) { 0 }
ab.each do |e|
  a = e[0] - 1
  b = e[1] - 1
  if a.zero?
    d[b] = 1
  else
    d[b] = d[a] + 1
  end
end

ab.each do |e|
  a = e[0] - 1
  b = e[1] - 1
  if d[a] < d[b]
    s[b] += s[a]
  else
    s[a] += s[b]
  end
end

puts s.join(' ')

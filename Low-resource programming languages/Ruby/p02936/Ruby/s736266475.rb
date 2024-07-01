# frozen_string_literal: true

n, Q = gets.split.map(&:to_i)
ab = (n - 1).times.map { gets.split.map { |e| e.to_i - 1 } }.sort_by { |e| e[0] }
px = Q.times.map { gets.split.map(&:to_i) }

s = Array.new(n) { 0 }

px.each do |e|
  p = e[0]
  x = e[1]
  s[p - 1] += x
end

d = Array.new(n) { false }
h = Hash.new { [] }
ab.each do |e|
  a = e[0]
  b = e[1]
  unless h[a].empty?
    h[a].push b
  else
    h[a] = [b]
  end
  unless h[b].empty?
    h[b].push a
  else
    h[b] = [a]
  end
end

q = []

q.push 0

loop do
  break if q.empty?

  a = q.shift
  d[a] = true
  h[a].each do |b|
    next if d[b]

    s[b] += s[a]
    q.push b
  end
end

puts s.join(' ')

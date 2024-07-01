# frozen_string_literal: true

def chmin(a, b)
  a > b ? b : a
  end

def chmax(a, b)
  a > b ? a : b
end

n, m = gets.split.map(&:to_i)
l = []
r = []
m.times do
  k, b = gets.split.map(&:to_i)
  l << k
  r << b
end
c = 0
d = 1_000_010
(0..m - 1).each do |i|
  c = chmax(c, l[i])
  d = chmin(d, r[i])
end

puts c <= d ? d - c + 1 : 0

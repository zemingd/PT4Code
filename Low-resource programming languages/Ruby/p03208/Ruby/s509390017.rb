(N, K) = gets.split.map(&:to_i)

h = []
N.times do
  h << gets.to_i
end

h.sort!

sD = 999_999_999_999

(N - K + 1).times do |i|
  dr = h[i..i+K-1]
  d = dr.last - dr.first
  if d < sD
    sD = d
  end
end

puts sD
(N, K) = gets.split.map(&:to_i)

h = []
N.times do
  h << gets.to_i
end

h.sort!

sI = 0
sD = 999_999_999_999

(N - K + 1).times do |i|
  d = 0
  (K - 1).times do |j|
    d += (h[i + j] - h[i + j + 1]).abs
  end
  if sD > d
    sI = i
    sD = d
  end
end

r = []

K.times do
  r << h.delete_at(sI)
end

puts r.max - r.min
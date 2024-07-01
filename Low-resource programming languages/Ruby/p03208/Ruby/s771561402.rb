N, K = gets.split(' ').map(&:to_i)
h = []
min = 10 ** 9

N.times do |i|
  h[i] = gets.to_i
end

h = h.sort

(N - K + 1).times do |i|
  diff = h[i + K - 1] - h[i]
  min = diff if diff < min
end

p min
N, K = gets.split.map(&:to_i)
P = gets.split.map { |a| (a.to_f + 1) / 2 }
cusum = [0]
max_sum = 0

N.times do |i|
  cusum.push(cusum[i] + P[i])
end

(N - K + 1).times do |j|
  max_sum = [max_sum, cusum[j + K] - cusum[j]].max
end

p max_sum
N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

sum = P[0...K].inject(:+)
max = sum
index = 0

(N - K).times do |i|
  sum = sum - P[i] + P[i + K]
  if sum > max
    max = sum
    index = i + 1
  end
end

ret = 0
K.times do |k|
  ret += (1..P[k + index]).inject(:+) / P[k + index].to_f
end

puts ret
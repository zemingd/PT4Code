N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

tmp = 0
sum = P[0..(K - 1)].inject(:+)
index = 0
(N - K).times do |i|
  tmp = sum - P[i] + P[i + K]
  if tmp > sum
    sum = tmp
    index = i + 1
  end
end

ret = 0
K.times do |k|
  ret += (1..P[k + index]).inject(:+) / P[k + index].to_f
end

puts ret
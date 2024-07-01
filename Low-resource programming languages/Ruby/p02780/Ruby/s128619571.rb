N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

index = 0
Q = []
P.each do |x|
  Q << (1..x).inject(:+) / x.to_f
end
max = sum = Q.take(K).inject(:+)

(N - K).times do |i|
  sum = sum - Q[i] + Q[i + K]
  if sum > max
    max = sum
    index = i + 1
  end
end

puts max
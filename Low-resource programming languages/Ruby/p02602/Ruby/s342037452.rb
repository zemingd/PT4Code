N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
(N - K).times do |i|
  puts as[i] < as[i + K] ? "Yes" : "No" 
end
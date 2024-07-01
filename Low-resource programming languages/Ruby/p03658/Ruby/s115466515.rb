N, K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
ans = ls.sort_by { |l| -l }.take(K).reduce(&:+)
puts ans

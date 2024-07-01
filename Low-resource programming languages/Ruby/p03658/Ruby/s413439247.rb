N, K = gets.split.map(&:to_i)
l_list = gets.chomp.split.map(&:to_i)
ans = l_list.sort_by { |l| -l }.take(K).reduce(0, &:+)
puts ans

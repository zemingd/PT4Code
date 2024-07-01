N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.group_by { |x| x }.each_value.map(&:size).sort.reverse.drop(K).inject(:+) || 0

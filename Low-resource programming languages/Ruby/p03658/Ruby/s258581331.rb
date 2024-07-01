N, K = gets.strip.split.map(&:to_i)
rods = gets.strip.split.map(&:to_i)
puts rods.max(K).reduce(:+)
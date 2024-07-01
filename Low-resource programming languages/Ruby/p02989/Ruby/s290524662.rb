N = gets.to_i
level = gets.split.map(&:to_i).sort
puts level
puts level[(level.size / 2)] - level[(level.size / 2) - 1]
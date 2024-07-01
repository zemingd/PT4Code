A, B, C = gets.split.take(3).map(&:to_i)
puts C.between?(A, B) ? :Yes : :No
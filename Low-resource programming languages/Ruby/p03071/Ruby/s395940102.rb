A, B = gets.split.map(&:to_i).sort
puts 1 < (B - A) ? 2 * B - 1 : A + B
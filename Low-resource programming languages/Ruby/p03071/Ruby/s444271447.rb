a, b = gets.split.map(&:to_i).sort
puts b > a ? b * 2 - 1 : b * 2
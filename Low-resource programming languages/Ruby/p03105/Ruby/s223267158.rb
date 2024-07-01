a, b, c = gets.chomp.split.map(&:to_i)
puts b / a > c ? c : (b / a)
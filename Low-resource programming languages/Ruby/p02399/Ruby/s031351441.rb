a, b = gets.chomp.split(' ').map(&:to_i)
puts "%d %d %0.5f" % [ a / b, a % b, a / b.to_f ]
a, b, c = gets.chomp!.split(' ').map(&:to_i).sort.reverse
puts a * 10 + b + c

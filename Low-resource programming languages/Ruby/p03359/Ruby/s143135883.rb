a,b = gets.chomp.split.map &:to_i
puts (a<=b)? a : a - 1
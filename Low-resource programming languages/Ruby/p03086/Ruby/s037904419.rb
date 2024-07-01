s = gets.chomp
ans = s.scan(/[ACGT]+/).map { |m| m.size }.max
puts ans
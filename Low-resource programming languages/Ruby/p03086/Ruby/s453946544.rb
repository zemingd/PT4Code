s = gets.chomp
ans = s.scan(/[ACGT]+/).map(&:size).max
puts ans || 0
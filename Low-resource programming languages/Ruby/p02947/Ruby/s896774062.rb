n = gets.chomp.to_i
s = (1..n).map { gets.chomp.chars.sort }
p s.group_by { |sn| sn }.select { |_, v| v.count > 1 }.values.inject(0) { |sum, v| sum + v.combination(2).count }

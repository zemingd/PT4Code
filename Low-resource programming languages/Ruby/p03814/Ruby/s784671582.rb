s = gets.chomp
p s.size - s.reverse.index('Z') - s.index('A')
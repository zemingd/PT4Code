n = gets.to_i
s = gets.chomp

puts 1.upto(n - 1).map { |i| (s[0...i].chars & s[i...n].chars).size }.max

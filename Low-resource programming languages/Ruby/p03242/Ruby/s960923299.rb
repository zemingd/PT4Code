n = gets.chomp
ans = n.chars.map { |ch| ch == '1' ? '9' : '1' }.join
puts ans

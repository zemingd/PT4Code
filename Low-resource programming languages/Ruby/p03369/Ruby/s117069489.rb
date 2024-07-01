S = gets.chomp.chars
ans = 700 + S.count { |ch| ch == 'o' } * 100
puts ans

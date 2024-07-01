N = gets.to_i
S = gets.chomp.chars.take(N)

s = S.drop_while { |ch| ch == '.' }.reverse.drop_while { |ch| ch == '#' }.reverse
white_count = s.count('.')
black_count = s.count('#')
ans = [white_count, black_count].min
puts ans

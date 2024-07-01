S = gets.chomp.chars.map(&:to_i)
K = gets.to_i
one_count = S.take_while { |ch| ch == 1 }.size
if one_count >= K
  puts 1
else
  puts S[one_count]
end

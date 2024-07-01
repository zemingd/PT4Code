S = gets.chomp
K = gets.chomp

if S.chars.all? { |ch| ch ==  '1' }
  puts 1
else
  puts S.chars.find { |ch| ch > '1' }
end

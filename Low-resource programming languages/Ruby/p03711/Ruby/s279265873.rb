x, y = gets.split.map &:to_i
if x == 2 || y == 2
  puts :No
elsif [4, 6, 9, 11].include?(x) && [4, 6, 9, 11].include?(y)
  puts :Yes
elsif [1, 3, 5, 7, 8, 10, 12].include?(x) && [1, 3, 5, 7, 8, 10, 12].include?(y)
  puts :Yes
else
  puts :No
end
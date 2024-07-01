A, B = gets.chomp.split.map &:to_i
sum = A+B
puts (sum%2 == 0)? sum/2 : 'IMPOSSIBLE'
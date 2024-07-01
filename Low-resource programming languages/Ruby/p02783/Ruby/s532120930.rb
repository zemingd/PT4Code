P = gets.chomp.split(' ').map(&:to_i)

cond = P[0] / P[1]

if cond == 0
  puts P[0] % P[1]
elsif P[0] == 1
  puts 1
elsif P[1] == 1
  puts P[0]
else
  puts (P[0] % P[1]) + 1
end
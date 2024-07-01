X = gets.to_i

a = X / 11
b = X % 11

if b == 0
  puts 2 * a
elsif b <= 6
  puts 2 * a + 1
else
  puts 2 * a + 2
end

x = gets.to_i

a, b = x.divmod(5 + 6)
if a == 0 && b == 0
  puts 0
elsif b <= 5
  puts 2*a + 1
else
  puts 2*(a + 1)
end
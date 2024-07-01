x = gets.to_i
r,m = x.divmod(11)

if m == 0
  puts 2 * r
elsif m <= 6
  puts 2 * r + 1
else
  puts 2 * r + 2
end
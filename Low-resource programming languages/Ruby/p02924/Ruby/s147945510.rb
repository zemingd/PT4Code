n = gets.to_i
if n == 1
  puts 0
elsif n == 2
  puts 1
else
  puts (1..(n - 1)).sum
end
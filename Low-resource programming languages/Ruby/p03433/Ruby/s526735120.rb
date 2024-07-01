n = gets.to_i
a = gets.to_i

if n % 500 == 0 && a > n
  puts 'Yes'
elsif n % 500 == 0 || a > n
  puts 'Yes'
else
  puts 'No'
end
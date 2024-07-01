n = gets.to_i
k = gets.to_i

if n == 1
  puts k
elsif k == 1
  puts 1
else
  puts k * ((k-1) ** (n-1))
end
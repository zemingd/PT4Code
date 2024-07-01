a = gets.to_i
b = gets.to_i
a, b = [a, b].sort
if a == 1 && b == 2
  puts 3
elsif a == 1 && b == 3
  puts 2
else
  puts 1
end

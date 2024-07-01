N = gets.chomp!
A = gets.chomp!

first = N.to_i / 500
result = first - A.to_i

if result < 0 || result == 0
  puts "Yes"
else
  puts "No"
end
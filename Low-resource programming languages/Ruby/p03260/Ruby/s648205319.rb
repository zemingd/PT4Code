a, b = gets.chomp.split.map(&:to_i)

ans = a * b

if ans % 3 == 0 
  puts "Yes"
else
  puts "No"
end
a,b,x = gets.chomp.split.map(&:to_i)

if x >= a && x <= b
  puts "Yes"
else
  puts "No"
end
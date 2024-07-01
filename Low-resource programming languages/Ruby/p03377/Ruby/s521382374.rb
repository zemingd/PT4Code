a, b, x = gets.chomp.split(" ").map(&:to_i)

if a == x
  puts "Yes"
elsif a > x
  puts "No"
else
  if a + b > x
    puts "Yes"
  else
    puts "No"
  end
end
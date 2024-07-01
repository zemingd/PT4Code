n = gets.chomp.to_i
a = gets.chomp.to_i
if (n % 500) <= a
  puts "Yes"
  exit
end
puts "No"

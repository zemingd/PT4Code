arr = gets.chomp.split(' ').map(&:to_i)
if arr.include?(2)
  puts "No"
else
  puts "Yes"
end
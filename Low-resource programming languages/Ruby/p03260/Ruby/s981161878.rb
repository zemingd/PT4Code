A, B = gets.chomp.split.map(&:to_i)
if [A, B],include?(2)
  puts "No"
else
  puts "Yes"
end

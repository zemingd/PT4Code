array = gets.chomp.split('').map(&:to_i)
if array.include?(7)
  puts "Yes"
else 
  puts "No"
end

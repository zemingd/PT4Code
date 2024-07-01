arr = gets.chomp.split('').map(&:to_i)
# p arr
if arr.include?(9)
  puts "Yes"
else
  puts "No"
end
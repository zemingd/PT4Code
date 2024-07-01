arr = gets.chomp.split(' ').map(&:to_i)
if arr.uniq.size == 1
  puts "No"
else
  puts "Yes"
end
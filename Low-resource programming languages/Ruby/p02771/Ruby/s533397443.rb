array = gets.split(' ').map(&:to_i)

array.uniq!

if array.count == 2
  puts "Yes"
else
  puts "No"
end
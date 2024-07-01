input = gets.chomp
a, b, c = input.split(' ').map(&:to_i)
if a < b && b < c
  puts "Yes"
else
  puts "No"
end


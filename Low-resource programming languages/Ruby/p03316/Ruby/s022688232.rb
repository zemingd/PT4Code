n = gets.chomp
array = n.chars.map(&:to_i)
sum = 0
array.each do |num|
  sum += num
end
n = n.to_i
if (n % sum) == 0
  puts "Yes"
else
  puts "No"
end

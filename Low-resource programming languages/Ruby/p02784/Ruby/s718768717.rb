h,n = gets.chomp.split(' ').map(&:to_i)
attack = gets.chomp.split(' ').map(&:to_i).sum
if attack >= h
  puts "Yes"
else
  puts "No"
end
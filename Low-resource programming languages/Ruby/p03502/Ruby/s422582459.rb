n = gets.chomp.to_s
sum = n.split(//).map(&:to_i).inject(:+)
 
if n.to_i % sum == 0
  puts "Yes"
else
  puts "No"
end

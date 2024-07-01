n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

sum = a_arr.sum.to_f / (4 * m)
if a_arr.count{|a| a >= sum } >= m
  puts "Yes"
else
  puts "No"
end

nums = gets.split(' ').map(&:to_i)
sum_num = 0
nums.each { |i| sum_num += i }
if sum_num <= 21
  print "win"
else
  print "bust"
end

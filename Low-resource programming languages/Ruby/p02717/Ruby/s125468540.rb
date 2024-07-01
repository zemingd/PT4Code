line1 = gets.strip
line2 = gets.strip
nums=line1.split(' ').map do |i|
  i.to_i
end
nums2=line2.split(' ').map do |i|
  i.to_i
end.sort.reverse
sum = 0
nums2.each do |donut|
  sum += donut
end
flag = (nums2[nums[1]-1] >= sum/(4*(nums[1])))
puts('yes') if flag
puts('no') if !flag
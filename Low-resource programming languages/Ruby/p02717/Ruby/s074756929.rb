line1 = gets.strip
line2 = gets.strip
nums=line1.split(' ').map do |i|
  i.to_i
end
nums2=line2.split(' ').map do |i|
  i.to_i
end.sort.reverse
puts(nums2[nums[2]-1] > nums2.sum/4/nums[0] ? 'yes' : 'no')

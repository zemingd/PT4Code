nums = []
nums<<gets.to_i
nums<<gets.to_i
nums<<gets.to_i
nums<<gets.to_i
nums<<gets.to_i
nums2 = nums.map {|n| a=10-n%10; a == 10 ? 0 : a }
nums2.sort!
nums2= nums2[0..-2]
sum=nums.inject(:+) + nums2.inject(:+)
puts sum
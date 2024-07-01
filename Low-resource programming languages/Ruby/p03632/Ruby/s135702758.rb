nums = gets.split.map(&:to_i)
result = 0
s1 = []
s1 << nums[0]
s1 << nums[2]
s2 = []
s2 << nums[1]
s2 << nums[3]
result = s2.min - s1.max if( (s2.min-s1.max)>0 )
puts result
n = $stdin.gets.chomp.to_i
kei = 1
arr = Array.new(5766+1){0}
nums = [1,1,1]
until nums[0] > 32

if nums[2] > 32
    nums[2] = 1;nums[1] += 1
end
if nums[1] > 32
    nums[1] = 1;nums[0] += 1
end

kei = nums[0]**2 + nums[1]**2 + nums[2]**2 + nums[0]*nums[1] + nums[1]* nums[2] + nums[2]*nums[0]

if kei <= 1000
arr[kei] += 1
end
nums[2] += 1
end

n.times do |k|
 puts arr[k+1]
end

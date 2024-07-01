n = gets.to_i
nums = []
nums_new = []
sum = 0

for i in 1..n
    nums[i-1] = i
    nums_new[i-1] = i+1
end

nums_new[-1] = 1

for i in 0...n
    sum += nums[i]%nums_new[i]
end

puts sum
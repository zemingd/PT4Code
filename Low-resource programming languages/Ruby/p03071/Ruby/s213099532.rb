nums = gets.split().map(&:to_i)
A = nums[0]
B = nums[1]

res = []
res.push(A + (A-1))
res.push(A + B)
res.push(B + (B-1))

puts res.max
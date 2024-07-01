nums = readlines.map(&:to_i)

choices = [1,2,3]
ans = choices - nums
puts ans[0]
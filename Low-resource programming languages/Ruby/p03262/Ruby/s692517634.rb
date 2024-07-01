n, x = gets.chomp.split(" ")
citys = gets.chomp.split(" ")
nums = [x.to_i]

for i in citys
    nums.push(i.to_i)
end

nums = nums.sort
min = nums.shift
ways = []
for i in nums
    ways.push(i-min)
    min = i
end

ways = ways.sort
min = 0
while min==0
  min = ways.shift
end

puts(min)

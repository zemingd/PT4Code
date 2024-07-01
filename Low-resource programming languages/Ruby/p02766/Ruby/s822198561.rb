array = gets.chomp.split(" ").map(&:to_i)
n = array[0]
k = array[1]

num = n
ans = []
while num != 0 do
  ans.unshift(num % k)
  num = num / k
end

print(ans.join.size)
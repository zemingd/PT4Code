n,k = gets.split.map(&:to_i)
cnt = 1
while n / k > 0
n = n / k
cnt += 1
end
puts cnt
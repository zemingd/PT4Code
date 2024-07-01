n, k = gets.split.map(&:to_i)
cnt = 0
while n != 0 do
    n /= k
    cnt += 1
end
puts cnt

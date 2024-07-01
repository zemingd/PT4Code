 gets.to_i
b = gets.split.map(&:to_i)
c = 2000000
ans = 0
for num in 0..a-1 do
  if b[num] < c
    c = b[num]
    ans += 1
  end
end
p ans
n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

ans = 0

for num in a
  while num % 2 == 0
    num = num / 2
    ans += 1
  end
end

print ans

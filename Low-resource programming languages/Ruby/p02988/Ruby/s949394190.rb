num = gets.to_i
num = num -2
line =gets.split.map(&:to_i)
i = 1
ans = 0
num.times do
  a = line[i-1]
  b = line[i]
  c = line[i+1]
  if a < b
    if b < c
      ans += 1
    end
  elsif b < a
    if c < b
      ans += 1
    end
  end
 i += 1
end
p ans
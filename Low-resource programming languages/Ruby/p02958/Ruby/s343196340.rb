n = gets.to_i
nums = gets.split.map(&:to_i)
count = 0

for i in 0..n-1 do
  unless nums[i] == i + 1
    count += 1
  end
end

if count == 0 || count == 2
  puts ('YES')
else
  puts('NO')
end
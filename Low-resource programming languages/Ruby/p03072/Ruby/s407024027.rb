n = gets.to_i
heights = gets.chomp.split(' ').map(&:to_i)
ans = 1
max = heights[0]
i = 1
while i < n
  if max <= heights[i]
    ans += 1
    max = heights[i]
  end
  i += 1
end
puts ans
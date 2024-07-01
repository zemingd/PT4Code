n = gets.to_i
heights = gets.chomp.split(' ').map(&:to_i)
max = 0
counter = 0
i = 1
while i < n
  if heights[i-1] >= heights[i]
    counter += 1
    if max < counter
      max = counter
    end
  else
    counter = 0
  end
  i += 1
end
if max < counter
  max = counter
end
puts max
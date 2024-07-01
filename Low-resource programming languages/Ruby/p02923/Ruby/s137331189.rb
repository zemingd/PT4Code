n = gets.to_i
h = gets.split.map(&:to_i)
max_count = 0
count = 0
i = n - 2
while i >= 0 
  if h[i + 1] <= h[i]
    count += 1
  else
    max_count = [max_count, count].max 
    count = 0
  end
  i -= 1
end
puts [max_count, count].max

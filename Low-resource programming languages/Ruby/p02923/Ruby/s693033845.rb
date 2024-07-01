n = gets.strip.to_i - 1
bars = gets.strip.split(' ').map(&:to_i)
max_count = 0
count = 0
n.times do |i|
  break if i >= n - 1
  if bars[i] >= bars[i + 1]
    count += 1
    max_count = count if count > max_count
  else
    count = 0
  end
end

puts max_count
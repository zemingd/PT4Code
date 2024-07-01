n = gets.to_i
blocks = gets.split.map(&:to_i)

point = 1
count = 0

blocks.each do |block|
  if block == point
    blocks.slice!(0..blocks.index(point))
    point += 1
    count += 1
  end
end

if count == 0
  puts -1
else
  puts n - blocks.length
end

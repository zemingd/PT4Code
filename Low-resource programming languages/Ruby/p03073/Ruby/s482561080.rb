tiles = gets.chop.split.map(&:to_i)

len = tiles.length
pattern_a = []
pattern_b = []
len.times do |i|
  if i % 2 == 0
    pattern_a.push(1)
    pattern_b.push(0)
  else
    pattern_a.push(0)
    pattern_b.push(1)
  end
end

a_change = 0
b_change = 0

len.times do |i|
  if (tiles[i] ^ pattern_a[i]) == 1
    a_change += 1
  else
    b_change += 1
  end
end

if a_change > b_change
  puts a_change
else
  puts b_change
end

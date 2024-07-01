tiles = gets.chop

len = tiles.length

change = 0

len.times do |i|
  color = i % 2
  if (tiles[i].to_i ^ color) == 1
    change += 1
  end
end

change_other = len - change
comp = [change, change_other]

puts comp.min

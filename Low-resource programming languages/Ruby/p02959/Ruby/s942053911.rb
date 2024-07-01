gets.to_i
monsters = gets.split.map(&:to_i)
braves = gets.split.map(&:to_i)

original = monsters.inject(:+)

braves.each_with_index do |n, i|
  diff = monsters[i] - n

  if diff < 0
    monsters[i] = 0
    diff2 = monsters[i+1] + diff
    diff2 < 0 ? monsters[i+1] = 0 : monsters[i+1] += diff
  else
    monsters[i] -= n
  end
end

puts original - monsters.inject(:+)
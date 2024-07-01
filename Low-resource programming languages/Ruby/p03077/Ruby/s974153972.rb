n = gets.to_i
move_maxs = readlines.map{|move_max| move_max.to_i}
move_minute = 0
move_maxs.each_with_index do |max,i|
  move_minute = [(n - 1) / max + 1 + i, move_minute + 1].max
end
puts move_minute
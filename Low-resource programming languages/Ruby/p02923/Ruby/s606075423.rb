n = gets.to_i
hs = gets.split(' ').map{|n| n.to_i}
moves, moves_max = 0, 0
prev = hs.shift
hs.each_with_index do |h, i|
  if h <= prev
    moves += 1
  else
    moves_max = moves if moves > moves_max
    moves = 0
  end
  prev = h
end
p [moves, moves_max].max
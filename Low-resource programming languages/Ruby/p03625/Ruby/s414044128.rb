n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
side = []
tmp = 0
a.each do |i|
  break if side.size == 2
  if tmp == i
    side << i
    tmp = 0
  else
    tmp = i
  end
end

puts side.size == 2 ? side[0] * side[1] : 0

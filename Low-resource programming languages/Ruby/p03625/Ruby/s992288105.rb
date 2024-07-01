gets
a=gets.split.map(&:to_i)
tmp = 0
side=[]
a.sort_by { |i| -i }.each do |i|
  if i == tmp
    tmp = 0
    side << i
    break if side.count == 2
  else
    tmp = i
  end
end
puts side[0].to_i * side[1].to_i
N = gets.to_i
as = gets.split(' ').map(&:to_i)
crushes = 0
target = 1
as.each do |a|
  if a == target
    target += 1
  else
    crushes += 1
  end
end
puts target == 1 ? -1 : crushes
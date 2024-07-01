N = gets.to_i
ary = gets.split.map(&:to_i)
ap = "APPROVED"
ary.each do |elm|
  next if elm % 2 == 1
  next if elm % 6 == 0
  next if elm % 10 == 0

  ap = "DENIED"
  break
end
puts ap

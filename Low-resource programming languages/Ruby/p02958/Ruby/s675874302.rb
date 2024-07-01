n = gets.to_i
p1 = gets.split.map(&:to_i)
p2 = p1.sort
c = 0
n.times do |i|
  c += 1 if p1[i] != p2[i]
end
puts c>2 ? :NO : :YES
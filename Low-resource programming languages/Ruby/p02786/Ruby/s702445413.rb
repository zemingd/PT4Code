h = gets.chomp.to_i
zan = h
counts = 0
while zan > 1
  counts += 1
  zan = zan/2
end
puts 2**(counts+1)-1
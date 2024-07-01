n = gets.to_i
sum = 0
w = gets.split.map do |i|
  sum += i.to_i
  i.to_i
end
comp = 0
min = Float::INFINITY
w.each do |i|
  comp += i
  min = [min,(comp - (sum - comp).abs).abs].min
end
puts min

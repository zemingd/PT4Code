n = gets.to_i
n.times.each do |i|
  print " #{i}" if i % 3 == 0 || i.to_s.split.include?('3')
end

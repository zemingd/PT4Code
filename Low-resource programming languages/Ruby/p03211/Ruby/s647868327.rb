X = 753
min = X
gets.chomp.split('').each_slice(3) do |w|
  next unless w.size == 3
  min = [(X - w.join.to_i).abs, min].min
end
puts min
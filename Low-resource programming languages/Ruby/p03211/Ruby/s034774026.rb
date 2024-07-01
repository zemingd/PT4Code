X = 753
min = X
gets.chomp.split('').each_slice(3) do |w|
  min = [X - w.join.to_i, min].min
end
puts min
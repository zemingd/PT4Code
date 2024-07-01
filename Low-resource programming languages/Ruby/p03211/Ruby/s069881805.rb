X = 753
min = X
tmp = gets.chomp.split('')

(0..(tmp.size - 3)).each do |i|
  next unless tmp[i..(i+2)].size == 3
  min = [(X - tmp[i..(i+2)].join.to_i).abs, min].min
end
puts min
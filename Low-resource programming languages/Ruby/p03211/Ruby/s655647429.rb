s = gets.chomp

min_dif = 999
(s.size-2).times do |i|
  min_dif = [min_dif, (753 - s.slice(i,3).to_i).abs].min
end

p min_dif
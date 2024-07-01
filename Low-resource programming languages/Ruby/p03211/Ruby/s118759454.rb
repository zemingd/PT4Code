n = gets.chomp.to_s
ary =[]
min2 = 999
(n.size-2).times do |i|
  ary << n[i,3]
end
ary.each do |j|
  min = (753 - j.to_i).abs
  min2 = min if min2 > min
end
puts min2
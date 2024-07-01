s = gets.chomp.split("")
min = 10000
for i in 0..(s.length-3)
  cp = s[i..(i+2)].join.to_i
  min = (753 - cp).abs if min > (753 - cp).abs
end
puts min
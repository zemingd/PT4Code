s = gets.split("")
min = 753
(s.length-2).times do |i|
  x = s[i].to_s + s[i+1].to_s + s[i+2].to_s
  x = x.to_i
  b = (753-x).abs
  if b < min
    min = b
  end
end
puts min
s = gets
min = 1e10
(0..s.size-3).each do |i|
  n = s[i..i+2].to_i
  diff = (753 - n).abs
  min = diff if diff < min
end
puts min

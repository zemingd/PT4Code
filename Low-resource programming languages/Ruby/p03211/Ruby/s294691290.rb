s = gets
x = 1000
(s.size - 2).times do |i|
  y = (s[i..(i + 2)].to_i - 753).abs
  x = y if y < x
end
puts x

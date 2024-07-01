min = 753 - 111
s =gets
(s.size-3).times do |i|
  num = s[i].to_i*100 + s[i+1].to_i*10 +s[i+2].to_i
  if (num - 753).abs < min
    min = (num-753).abs
  end
end
puts min

s = gets
l = s.length - 1
out = 0
l.times do |i|
  out += 1 if s[i].to_i == i % 2
end
puts [out, l - out].min

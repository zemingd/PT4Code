line = gets
h, a = line.split(' ').map{|s| s.to_i}

n = 0
while h > 0
  n += 1
  h -= a
end

puts n

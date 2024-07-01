x = gets.to_i
t = 0
s = 0
loop
  s += 6
  t += 1
  break if s >= x
  s += 5
  t += 1
  break if s >= x
end
puts t
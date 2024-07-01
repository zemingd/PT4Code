x = gets.to_f
m = 100.0

n = 0
while true do
  m *= 1.01
  m = m.floor
  n += 1
  break if  m >= x
end
puts n
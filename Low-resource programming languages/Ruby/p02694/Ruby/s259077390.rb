x = gets.to_i

t = 100
cnt = 0

while t <= x
  cnt += 1
  t = (t * 1.01).to_i
end

puts cnt
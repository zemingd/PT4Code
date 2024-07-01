x = gets.to_i
m = 100
y = 0
while m < x do
  m = (m.to_f * 1.01).to_i
  y += 1
end
puts y

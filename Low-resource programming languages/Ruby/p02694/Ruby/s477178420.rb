x = gets.to_i
total = 100
n = 0
while total < x
  total = (total * 1.01).floor
  n += 1
end
puts n
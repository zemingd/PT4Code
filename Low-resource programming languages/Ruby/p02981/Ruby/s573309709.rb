n, a, b = gets.split(" ")

train = a.to_i * n.to_i
taxi = b.to_i

if train < taxi
  puts train
else
  puts taxi
end

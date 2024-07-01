n,a,b = gets.split.map(&:to_i)

train = n * a
taxi = b

if train > taxi
  puts taxi
else
  puts train
end

N = gets.to_i
arr = gets.split(' ').map(&:to_i)
t = 0

for i in arr
  while (i.even?) do
    t += 1
    i = i / 2
  end
end

puts t
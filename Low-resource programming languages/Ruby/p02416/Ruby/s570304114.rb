x_array = []
loop do
  x = gets.chomp.chars.map(&:to_i)
  if x == [0]
    break
  else
    length= x.length
    x_sum = 0
    for i in 0..(length-1)
      x_sum += x[i]
    end
    x_array.push(x_sum)
  end
end
length = x_array.length
for i in 0..(length-1)
  puts x_array[i]
end
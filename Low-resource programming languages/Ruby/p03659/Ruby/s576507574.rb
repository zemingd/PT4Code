n = gets.to_i
line = gets
data = line.split
sum = 0
data.map! do |item|
  item = item.to_i
  sum += item
end
min = sum
if n == 2
min = (data[0] - data[1]).abs
else
  (0..(n-2)).each do |i|
    diff = (sum - data[i]*2).abs
    if diff > min
      break
    end
    min = diff
  end
end
p min
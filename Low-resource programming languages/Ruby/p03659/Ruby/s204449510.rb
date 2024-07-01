n = gets.to_i
line = gets
data = line.split
sum = 0
data.map! do |item|
  item = item.to_i
  sum += item
end
x = data[0]
diff = (sum - 2*x).abs
min = diff
(1..(n-2)).each do |i|
  x += data[i]
  diff = (sum - 2*x).abs
  if diff < min 
    min = diff
  end
end
p min
n = gets.to_i
line = gets
data = line.split(" ")
num = Array.new(9, 0)
n.times do |i|
  idx = data[i].to_i / 400
  if idx >= 8
    num[8] += 1
  else
    num[idx] += 1
  end
end
min = 0
8.times do |i|
  if num[i] != 0
    min += 1
  end
end
max = min
if num[8] != 0
  max += num[8]
  if min == 0
    min = 1
  end
end
puts "#{min} #{max}"
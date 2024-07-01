n = gets.to_i
line = gets
data = line.split(" ")
if data.length == n
  data.map! do |item|
    item.to_i
  end
  num = Array.new(9, 0)
  data.each do |item|
    idx = item / 400
    num[idx] += 1
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
  end
  puts "#{min} #{max}"
end
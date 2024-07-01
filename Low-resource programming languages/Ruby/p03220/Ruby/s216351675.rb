n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
min = h.inject(:+)
j = 1
p = 1
h.each do |i|
  temp = t - i * 0.006
  if min > (a - temp).abs
    min = (a - temp).abs
    p = j
  end
  j += 1
end
puts p
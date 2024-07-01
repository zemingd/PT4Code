n = gets.to_i
x = gets.split.map(&:to_i)
min,max = 100,1
x.each do |i|
  i < min ? (min = i) : max < i ? (max = i) : next
end
ans = Float::INFINITY
(min..max).each do |i|
  sum = 0
  x.each do |j|
    sum += (i-j)**2
  end
  ans = [ans,sum].min
end
puts ans

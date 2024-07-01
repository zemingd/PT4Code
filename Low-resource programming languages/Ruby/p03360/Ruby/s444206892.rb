array = gets.chop.split.map(&:to_i)
k = gets.chop.to_i
m = array.max
sum = 0
(0...k).each do | n |
  m *= 2
end
array.each do |i|
  sum += i
end
ans = sum - array.max + m
puts ans
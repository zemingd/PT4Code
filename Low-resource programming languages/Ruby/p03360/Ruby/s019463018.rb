array = gets.chop.split.map(&:to_i)
k = gets.chop.to_i
sum = 0
m = array.sort.max
(0..k).each do | i |
  m *= 2
end
array << m
array.each do | j |
  sum += j
end
puts sum

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

count = 0
 
(0..n-1).each do |i|
  x = [b[i],a[i]].min
  b[i] = b[i] - x
  y = [a[i+1], b[i]].min
  a[i+1] = a[i+1] - y
  count += x + y
end

puts count.to_s
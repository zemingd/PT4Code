n, y = gets.split.map(&:to_i)
a = b = c = 0
(0..n).each do |i|
a = i
(0..n).each do |j|
b = j
c = n - a - b
break if c < 0
if 10000 * a + 5000 * b + 1000 * c == y
puts "#{a} #{b} #{c}"
exit
end
end
end

puts "-1 -1 -1"
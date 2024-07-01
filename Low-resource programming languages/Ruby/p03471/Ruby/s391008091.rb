n, y = gets.split.map(&:to_i)
(0..n).each do |a|
(0..(n-a)).each do |b|
c = n - a - b
break if c < 0
if 10000 * a + 5000 * b + 1000 * c == y
puts "#{a} #{b} #{c}"
exit
end
end
end

puts "-1 -1 -1"
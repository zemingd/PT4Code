n, m = gets.split.map(&:to_i)
array = []
m.times do
  a, b = gets.split.map(&:to_i)
  array << a
  array << b
end
(1..n).each do |i|
  puts array.count(i)
end

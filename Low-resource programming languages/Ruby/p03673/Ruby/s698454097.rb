n = gets.to_i
a = gets.split.map(&:to_i)
b = []
n.times do |i|
  b.push(a[i]).reverse!
end
b.each_with_index do |x, i|
  print " " unless i == 0
  print x
end
puts
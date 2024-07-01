n = gets.to_i
a = gets.split.map(&:to_i)
b = []
n.times do |i|
  if i.even?
    b.push(a[i])
  else
    b.unshift(a[i])
  end
end
b.reverse! if n.odd?
b.each_with_index do |x, i|
  print " " unless i == 0
  print x
end
puts
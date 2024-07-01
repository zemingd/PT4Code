n = gets.to_i
a = gets.split.map(&:to_i)
b = []
0.upto(n - 1) do |i|
  if i.odd?
    b.push(a[i])
  else
    b.unshift(a[i])
  end
end
b.reverse! if n.even?
puts b.join(' ')
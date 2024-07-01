gets
a = gets.split.map(&:to_i)
b = []
f = true
a.each do |x|
  if f
    b.unshift(x)
    f = !f
  else
    b << x
    f = !f
  end
end
b.reverse! if f
puts b.join(' ')
gets
a = gets.split.map(&:to_i)
b = []
f = true
a.each do |x|
  if f
    b.unshift(x)
    f = false
  else
    b << x
    f = true
  end
end
b.reverse! if f
puts b.join(' ')
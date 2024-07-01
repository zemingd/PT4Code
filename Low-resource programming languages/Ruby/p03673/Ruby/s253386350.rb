n = gets.to_i
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
if f
  b.reverse!
end
puts b.join(' ')
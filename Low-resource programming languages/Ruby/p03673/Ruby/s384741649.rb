n = gets.to_i
a = gets.split.map(&:to_i)
b = []
f = true
a.each do |x|
  if f
    b << x
    f = false
  else
    b.unshift(x)
    f = true
  end
end
puts b.join(' ')
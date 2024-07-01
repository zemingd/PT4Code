n = gets.to_i
a = gets.split.map(&:to_i)
b = []
(n/2).times do |i|
  b[i+n/2] = a[i*2]
  b[n/2-1-i] = a[i*2+1]
end
if n%2 == 1
  b << a[-1]
  b.reverse!
end
puts b.join(' ')

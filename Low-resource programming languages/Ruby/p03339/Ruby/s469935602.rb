a = gets.to_i
b = gets.split('')
c = []
(a+1).times do |i|
  bl = b[0...i].count('W')
  br = b[i+1..a+1].count('E')
  c[i] = bl + br
end
puts c.min

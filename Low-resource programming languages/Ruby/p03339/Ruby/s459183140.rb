a = gets.to_i
b = gets.split('')
c = []
(a+1).times do |i|
  bl = b.slice(0...i)
  br = b.slice(i+1..a+1)
  c[i] = bl.count('W') + br.count('E')
end

puts c.min

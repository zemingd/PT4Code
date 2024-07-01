n, x = gets.split(' ')
n = n.to_i
x = x.to_i
m = []
(0...n).each {
  m << gets.to_i
}

m.sort!
count = 0
m.each do |i|
  count += 1
  x -= i
end
count += x / m[0]
puts count

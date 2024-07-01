n,x = gets.split.map(&:to_i)
m = []
n.times do
  s = gets.to_i
  x -= s
  m << s
end
m.sort!
sum = n
sum += (x / m[0])
puts sum
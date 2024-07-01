n = gets.to_i
ss = gets.chomp.chars

b = Array.new(n, 0)
c = Array.new(n, 0)
n.times do |i|
  if ss[i] == '#'
    b[i] = 1
  else
    c[i] = 1
  end
end
b = b.inject([0]) { |i, j| i << i.last + j }
c = c.inject([0]) { |i, j| i << i.last + j }.reverse
z = []
(n+1).times do |i|
  z.push(b[i] + c[i])
end

puts z.min
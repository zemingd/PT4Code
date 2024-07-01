n,m,c = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

o = 0

n.times do |x|
  t = 0
  a = gets.chomp.split(" ").map(&:to_i)
  m.times do |y|
    s = a[y]*b[y]
    t += s
  end
  t += c
  o += 1 if ( t > 0 )
end

p o
x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

d = []

a.each do |x|
  b.each do |y|
    d << x + y
  end
end

e = []

d.sort.reverse[0,3000].each do |x|
  c.each do |y|
    e << x + y
  end
end

puts e.sort.reverse[0,k]
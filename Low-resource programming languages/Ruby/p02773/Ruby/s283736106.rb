n = gets.to_i
v = {}
n.times {
  s = gets.chomp
  if v.key?(s)
    v[s] += 1
  else
    v[s] = 1
  end
}

c = v.values
d = []
v.each do |x, y|
  if y == c.max
    d << x
  end
end

d.sort.each do |x|
  puts x
end

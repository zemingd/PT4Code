n, q = gets.chop.split.map(&:to_i)

c = Hash.new(0)

ab = []

(n-1).times do |i|
  ab[i] = gets.chop.split.map(&:to_i)
end

ab.sort_by!{ |x| [x[0],x[1]]}

q.times do |i|
  p, x = gets.chop.split.map(&:to_i)
  c[p] += x
end

(n-1).times do |i|
  c[ab[i][1]] += c[ab[i][0]]
end

# p ab


c = c.to_a.sort_by!{ |x| x[0]}

c.each do |val|
  p val[1]
end

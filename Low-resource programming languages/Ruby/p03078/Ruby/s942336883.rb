x,y,z,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

a = a.sort_by{|n| -n}
b = b.sort_by{|n| -n}
c = c.sort_by{|n| -n}

ab = a.flat_map do |aa|
  b.flat_map do |bb|
    aa + bb
  end
end.sort_by{|n| -n}.take(k)

all = ab.flat_map do |aabb|
  c.flat_map do |cc|
    aabb + cc
  end
end.sort_by{|n| -n}.take(k)

puts all

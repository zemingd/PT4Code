x, y, z, k = gets.split.map(&:to_i)

A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse
C = gets.split.map(&:to_i).sort.reverse

s = A.size * B.size
t = Array.new( s )

i = 0
A.each do |a|
  B.each do |b|
    t[i] = a + b
    i += 1
  end
end

t = t.sort.reverse[0,k]

v = []
C.each do |c|
  t.each do |u|
    v.push( c + u )
  end
end

puts v.sort.reverse[0, k]

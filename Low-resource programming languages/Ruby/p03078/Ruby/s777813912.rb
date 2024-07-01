x, y, z, k = gets.to_s.split.map{|i|i.to_i}

A = gets.to_s.split.map{|i|i.to_i}.reverse
B = gets.to_s.split.map{|i|i.to_i}.reverse
C = gets.to_s.split.map{|i|i.to_i}.reverse

t = []

i = 0
A.each_with_index do |a,i|
  B.each_with_index do |b,j|
    break if (i+1) * (j+1) > k
    t.push a + b
  end
end

t = t.sort.reverse[0,k]

v = []
C.each_with_index do |c,i|
  t.each_with_index do |u,j|
    break if (i+1) * (j+1) > k
    v.push( c + u )
  end
end

puts v.sort.reverse[0, k]
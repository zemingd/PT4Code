a = Array.new(4){Array.new(3){Array.new(10,0)}}
b = gets.to_i
b.times do
  c = gets.split.map(&:to_i)
  a[c[0]-1][c[1]-1][c[2]-1] += c[3]
end
4.times do |i|
 a[i] = a[i].reverse
  3.times do |j|
    print " ", a[i][j].join(" "),"\n"
  end
   puts "#"*20
  end
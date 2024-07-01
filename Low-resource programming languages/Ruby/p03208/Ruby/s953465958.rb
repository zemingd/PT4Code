a = gets.chomp.split.map{|aa|aa.to_i}
b,c,d = [],[],[]
a[0].times do
  b.push(gets.chomp.to_i)
end
b.sort!
p b
for incr in 0...(a[0]-1)
  c.push(b[incr+1]-b[incr])
end
p c
for incr in 0..(a[0]-a[1])
  d.push(c[incr...(incr+a[1]-1)].sum)
end
puts d.min
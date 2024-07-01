N,a=gets.chomp.split.map(&:to_i)
c = N.times.map{gets.to_i}
c.sort!
d=[]
for i in 0..(N-a)
  d<<c[i+a-1]-c[i]
end

puts d.min

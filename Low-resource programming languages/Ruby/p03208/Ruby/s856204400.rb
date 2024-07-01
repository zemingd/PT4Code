N,a=gets.chomp.to_i
c = N.times.map{gets.to_i}
d=[]
for i in 0..(N-a+1)
  d<<c[i]-c[i+a-1]
end

puts d.min
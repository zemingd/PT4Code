N=gets.chomp.to_i
S=N.times.map { gets.chomp }
a=Hash.new(0)
S.each do |i|
  a[i.to_sym]+=1
end
m=a.max{ |x, y| x[1] <=> y[1] }
n=0
m.each do |i|
  n=i
end
b=[]
a.each do |i,j|
  if j==n then
    b.push(i.to_s)
  end
end
puts b.sort!
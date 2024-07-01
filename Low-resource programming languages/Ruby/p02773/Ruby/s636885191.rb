N=gets.to_i
s=N.times.map{gets.chomp.to_s}
t=s.uniq.sort
a=[]
t.each do |i|
  a<<s.count(i)
end
b=a.each_index.select{|i| a[i]==a.max}

b.each do |i|
  puts t[i]
end

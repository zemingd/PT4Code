n=gets.to_i
a=gets.chomp.split.map(&:to_i)
co={}
s=0
for i in 0..n-1
  if a[i]<3200
    c=a[i]/400
    co[c]=true
  else
    s+=1
  end
end
puts "#{[co.size,1].max} #{co.size+s}"

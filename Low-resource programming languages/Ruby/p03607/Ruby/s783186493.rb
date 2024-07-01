N=gets.chomp.to_i
a=N.timse.map{gets.chomp.to_i}
b=a.uniq
cnt=0
for i in 0..(b.length-1)
  cnt+=1 if a.count(b[i])%2!=0
end
puts cnt
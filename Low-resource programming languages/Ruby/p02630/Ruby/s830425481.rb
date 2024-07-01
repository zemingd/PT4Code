#n,k=gets.split(' ').map(&:to_i)
#h=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }
n=gets.to_i
a=gets.split(' ').map(&:to_i)
q=gets.to_i
#Array.new=n_hairetu[n+1]
n_hairetu=Array.new(10**6,0)
a.each do |i|
  n_hairetu[i]+=1
end
#puts n_hairetu
sum=a.sum
#puts sum
tajigen = Array.new(q) { Array.new(2,0) }
for i in 0..q-1
  b,c=gets.split(' ').map(&:to_i)
  tajigen[i][0]= b
  tajigen[i][1]= c
end
#puts tajigen
#puts sum
for i in 0..q-1
  #b,c=gets.split(' ').map(&:to_i)
  b=tajigen[i][0]
  c=tajigen[i][1]
  #puts b
  #puts c
  b_count=n_hairetu[b]
  c_count=n_hairetu[c]
  sum=sum-b*b_count+c*(b_count)
  n_hairetu[b]=0
  n_hairetu[c]+=b_count
  puts sum
end

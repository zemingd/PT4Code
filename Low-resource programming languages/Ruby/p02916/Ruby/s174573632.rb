n=gets.chomp.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
sum=0
n.times do |i|
  sum += b[a[i]-1]
end
sum1=0
a.each_cons(2) do |k,m|
  if m-k==1 then
    sum1 += c[k-1]
  end
end
print sum+sum1

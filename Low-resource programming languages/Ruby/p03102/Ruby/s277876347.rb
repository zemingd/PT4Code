n,m,c,=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
cnt=0
n.times do
  a=gets.split.map(&:to_i)
  sum=0
  m.times do |i|
    sum+=a[i]*b[i]
  end
  cnt+=1 if sum+c>0
end

puts cnt
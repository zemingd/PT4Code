n,k=gets.split.map(&:to_i)
ab=[0]*(10**5+1)
n.times do
  a,b=gets.split.map(&:to_i)
  ab[a]+=b
end
c=0
i=0
ab.each do |b|
  c+=b
  if k<=c
    puts i
    exit
  end
  i+=1
end

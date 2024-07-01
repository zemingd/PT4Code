n,k=gets.split.map(&:to_i)
ab=[0]*(10**5+1)
n.times do
  a,b=gets.split.map(&:to_i)
  ab[a]+=b
end
c=0
100000.times do |i|
  c+=ab[i+1]
  if k<=c
    puts i+1
    exit
  end
end

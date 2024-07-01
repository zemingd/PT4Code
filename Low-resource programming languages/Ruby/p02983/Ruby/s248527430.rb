l,r=gets.split.map(&:to_i)
k=1
while 2019*k<l
  k+=1
end

if 2019*k<=r
  puts 0
else
  ans=10**19
  (l..r).to_a.combination(2) do |i,j|
    ans=[(i*j)%2019,ans].min
  end
  puts ans
end

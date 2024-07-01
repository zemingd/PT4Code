n,K=gets.split.map &:to_i

count=0
while n!=0
  n=n/K
  count+=1
end

puts count
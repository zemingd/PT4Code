n,K=gets.split.map(&:to_i)
cnt=0
while n>0
    cnt+=1
    n/=K
end
puts cnt
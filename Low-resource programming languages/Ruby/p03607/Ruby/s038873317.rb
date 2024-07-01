num=Hash.new(0)
n=gets.to_i
cnt=0
n.times do
 s=gets.to_i
 num[s]+=1
end

num.each do|key,value|
    if value%2==0
      cnt+=1
end
end
puts cnt

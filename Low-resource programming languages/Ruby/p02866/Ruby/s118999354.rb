N=gets.to_i
d=[]
d=gets.chomp.split(" ").map{|i| i.to_i}

arr=[]
N.times do |i|
  arr[i]=0
end

N.times do |i|
  arr[d[i]]+=1
end

result=1
count=0
while arr[count]!=0
  result*=arr[count]**arr[count+1]
  count+=1
end

el=0
N.times do |j|
  if arr[j]==0
    el=1
    next
  end
  if arr[j]!=0 && el==1
    result=0
  end
end

print "#{result}"

n=gets.to_i
a=gets.split.map(&:to_i)
index=0
v=a.inject(&:+)
result=[]
left=0
while index<=a.length-2
   
    left+=a[index]
    right=v-left
    result<<(left-right).abs
    

index+=1
end
p result.min
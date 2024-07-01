n=gets.to_i
a=gets.split.map(&:to_i)
index=0
v=a.inject(&:+)
result=[]
while index<=a.length-1
    left=0
    for i in 0..index
    left+=a[i]
    end
    right=v-left
    result<<(right-left).abs
    
    
index+=1
end
p result.min

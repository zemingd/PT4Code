n,m=gets.split.map(&:to_i)
if m==0
    p n
    exit
end
a=gets.split.map(&:to_i)
array=[*-150..150]

array=array-a

v=100000
vv=0


array.each do |i|
   
    j=(n-i).abs
    if j<v
        v=j
        vv=i
    end
end
    
    

p vv
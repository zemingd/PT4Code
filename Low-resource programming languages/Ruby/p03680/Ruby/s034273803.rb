n, *a=$<.map &:to_i
k=0
res=-1
(1..n).each do |i|
    k=a[k]-1
    if k==1
        res=i
        break
    end
end
p res

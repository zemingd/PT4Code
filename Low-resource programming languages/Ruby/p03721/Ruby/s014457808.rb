n,k=gets.split.map(&:to_i)
barray=[]
n.times.each do
    v=gets.split.map(&:to_i)
    barray<<v


end



barray=barray.sort{|x,y|x[0]<=>y[0]}
count=0
p barray
for i in 0..barray.length-1
    v=barray[i][1]
    count+=v
    if count>=k
        p barray[i][0]
        exit
    end
end
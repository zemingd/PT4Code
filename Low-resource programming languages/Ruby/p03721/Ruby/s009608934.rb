n,k=gets.split.map(&:to_i)
barray=[]
n.times.each do
    v=gets.split.map(&:to_i)
    array=[v[0]]*v[1]
   
    barray=barray+array

end

barray.sort!

p barray[k-1]
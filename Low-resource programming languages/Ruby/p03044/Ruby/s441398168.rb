n=gets.to_i
kiarray=[]
quearray=[]
n.times{ quearray.push([])}

(n-1).times{
    p,q,w=gets.split.map(&:to_i)
    quearray[p-1].push([q,w%2])
    quearray[q-1].push([p,w%2])
}

root=1
ansarray=Array.new(n,0)
ansarray[root-1]=1
list=[root]

while list.length>0

    now=list.shift
    quearray[now-1].map{|i|
 
        if ansarray[i[0]-1]==0 && i[1]==0
            ansarray[i[0]-1]=ansarray[now-1]
            list.push(i[0])
        elsif ansarray[i[0]-1]==0 && i[1]==1
                ansarray[i[0]-1]=ansarray[now-1]*(-1)
                list.push(i[0])
        end
    }
end

puts ansarray
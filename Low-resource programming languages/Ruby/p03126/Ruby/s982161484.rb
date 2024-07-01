N,M=gets.split.map &:to_i
list=Array.new(M,0)
N.times{
    ans=gets.split.map &:to_i
    ans[0].times{|i|
        list[ans[i+1]-1]+=1
    }
}
c=0
M.times{|m|
    if list[m]==N then
        c+=1
    end
}
p c
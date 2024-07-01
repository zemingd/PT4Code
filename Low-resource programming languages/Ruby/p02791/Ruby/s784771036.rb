n=gets.to_i
a=gets.split.map &:to_i
res=0
minv=10**9
a.each{|e|
    if e<minv
        res+=1
        minv=e
    end
}
puts res

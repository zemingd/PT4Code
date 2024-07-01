n=gets.to_i&1
a=gets.split.map &:to_i
b=[]
a.each_with_index{|e,i|
    if i&1==n
        b<<e
    else
        b.unshift(e)
    end
}
puts b.join(' ')
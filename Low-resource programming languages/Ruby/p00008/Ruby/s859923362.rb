arr=Array.new(51,0)
a=b=c=d=10
a.times{|a|b.times{|b|c.times{|c|d.times{|d|arr[a+b+c+d]+=1}}}}
while gets
    puts arr[$_.to_i]
end
w,h,x,y=gets.split.map(&:to_i)
half_w=w/2.round(10)
half_h=h/2.round(10)
result1=((half_w))*h.round(10)
result2=((half_h))*w.round(10)
#p result1
#p result2
if result1==result2
    puts [result1.round(10),1].join(" ")
else
    result=[]
    result<<[result1.round(10),result2.round(10)].max
    result<<1
    puts result.join(" ")
end
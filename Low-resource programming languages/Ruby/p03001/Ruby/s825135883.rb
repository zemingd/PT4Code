w,h,x,y=gets.split.map(&:to_i)
half_w=w/2.round(10)
half_h=h/2.round(10)
point=[x,y]
result1_list=[]
result2_list=[]

result1=(x)*h.round(9)
result2=(y)*w.round(9)
result1_list<<result1
result2_list<<result2

result1=(w-x)*h.round(9)
result2=(h-y)*w.round(9)
result1_list<<result1
result2_list<<result2


#p result1_list
#p result2_list

#p result1
#p result2
result1=result1_list.min
result2=result2_list.min
if result1==result2
    puts [result1.round(9),1].join(" ")
else
    result=[]
    result<<[result1.round(9),result2.round(9)].max
    result<<0
    puts result.join(" ")
end

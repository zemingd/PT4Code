menu=[]
menu << _a=gets.to_i
menu << _b=gets.to_i
menu << _c=gets.to_i
menu << _d=gets.to_i
menu << _e=gets.to_i

time=0

menu.map{|i| i%10}.sort.each{|a|
    if a.nonzero?
        time=a-10
        break
    end
}

time+=menu.map{|i| i.ceil(-1)}.sum

puts time
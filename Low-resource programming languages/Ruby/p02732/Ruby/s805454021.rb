n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
kosuu=Hash.new
kosuu.default=0
a.each{|item|
    kosuu[item]+=1
}
sum = Hash.new
sum.default = 0
kosuu.each{|key,value|
        sum[key]=value*(value-1)/2
}
wa = 0
sum.each_value{|v|
    wa += v
}
a.each{|item|
    puts wa+(sum[item]*(kosuu[item]-2)/kosuu[item])-sum[item]
}
x=gets.to_i

#print Math.log(x/100.0,1.01).ceil
t=100
(1..4000).each{|i|
    t=(t*1.01).to_i
    if t >= x
        print i
        break
    end
}
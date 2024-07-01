i = gets.chomp.split(" ").map(&:to_i)
100.times{|t|
    t+=1
    if (t*0.08).floor == i[0]  and (t*0.1).floor == i[1]
        print t
        return 0
    end
}
print -1
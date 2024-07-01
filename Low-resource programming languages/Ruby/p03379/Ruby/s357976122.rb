gets
x=gets.split.map(&:to_i)

sorted=x.sort

x.each{|i|
    if i <= sorted[sorted.size/2 - 1]
        print sorted[sorted.size/2],"\n"
    else
        print sorted[sorted.size/2 - 1],"\n"
    end
}

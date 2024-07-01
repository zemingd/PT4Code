N=gets.to_i
a=gets.split.map(&:to_i)
count=Hash.new{0}
max=0
a.each{|x|
    (-1 .. 1).each{|i|
        count[x+i]+=1
        if max<count[x+i]
            max=count[x+i]
        end
    }
}
puts max

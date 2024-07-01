def min2(a,b)
    return a>b ? b : a
end
def max2(a,b)
    return a<b ? b : a
end

def get_dist(xx,yy)
    score = 0
    for x,y in xx.zip(yy)
        score += (y-x)**2
    end
    return score
end

def is_nomal(v)
    l = 0
    r = v

    if  v ==1 
         return true
    end

    while r - l > 1
        center = (r+l)/2
        center2 = center**2

        if center2 == v
            return true
        elsif center2 > v
            r = center
        else
            l = center
        end
    

    end

    return false

end

N = gets.to_i

Xlist = (1..N).map{|i| gets.split.map{|j| j.to_i}}
count =0
for i in 0...N-1
    for j in i+1...N

        if is_nomal(get_dist(Xlist[i],Xlist[j]))
            count +=1
        end

    end
end
puts count